import 'package:cooking_completly_understood/di/message_repository_provider.dart';
import 'package:cooking_completly_understood/di/recipe_repository_provider.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_state.g.dart';

@riverpod
class MessagesState extends _$MessagesState {
  @override
  List<OpenAIChatCompletionChoiceMessageModel> build() {
    //MessageStateが初期化された際に初期メッセージを送信する
    ref.read(messageRepositoryProvider).sendInitialMessage();
    //TODO: RecipeRepositoryからローカルDBに保存されているメッセージを取得してこちらに格納
    return [];
  }

  Future<void> sendMessageAndReceiveMessage(String inputedMessage) async {
    //FIXME: 現状は、ユーザーがメッセージを入力した際に、そのメッセージをstateに保存しているが、
    //要件次第では消える可能性大
    state = [
      ...state,
      OpenAIChatCompletionChoiceMessageModel(
        content: inputedMessage,
        role: OpenAIChatMessageRole.user,
      ),
    ];

    //ChatGPTを呼び出してメッセージを呼び出し、そのメッセージをstateに保存する
    await ref
        .read(messageRepositoryProvider)
        .sendMessageAndReceiveMessage(inputedMessage)
        .then(
      //現状はString型のメッセージを受け取って、stateに保存しているが、
      //ここのクラスでは、このように状態を保存せず、repository内のビジネスロジックで
      //ローカルDBに保存するように実装する

      (message) async {
        state = [
          ...state,
          OpenAIChatCompletionChoiceMessageModel(
            content: message.toString(),
            role: OpenAIChatMessageRole.assistant,
          ),
        ];

        //FIXME: 現在は、メッセージを受け取った際にレシピを保存するようにしているが
        // 本来は、ユーザーがレシピを選択した際にレシピを保存するようにしたい
        await ref.read(recipeRepositoryProvider).then(
              (value) => value.insertRecipeFromMessage(message),
            );
      },
    );
  }
}
