import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/di/message_repository_provider.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_state.g.dart';

@riverpod
class MessagesState extends _$MessagesState {
  @override
  List<OpenAIChatCompletionChoiceMessageModel> build() {
    //MessageStateが初期化された際に初期メッセージを送信する
    ref.read(messageRepositoryProvider).sendInitialMessage();
    //TODO: MessageRepositoryからローカルDBに保存されているメッセージを取得してこちらに格納
    return [];
  }

  Future<void> sendMessageAndReceiveMessage(String message) async {

    //TODO: ローカルDBにメッセージを保存する
    //現状はstateに保存しているが、ローカルDBに保存するようにする
    state = [
      ...state,
      OpenAIChatCompletionChoiceMessageModel(
        content: message,
        role: OpenAIChatMessageRole.user,
      ),
    ];

    //TODO: MessageRepositoryからメッセージを送信
    await ref
        .read(messageRepositoryProvider)
        .sendMessageAndReceiveMessage(message)
        .then(
          //現状はString型のメッセージを受け取って、stateに保存しているが、
          //ここのクラスでは、このように状態を保存せず、repository内のビジネスロジックで
          //ローカルDBに保存するように実装する

          
          (value) => state = [
            ...state,
            OpenAIChatCompletionChoiceMessageModel(
              content: value,
              role: OpenAIChatMessageRole.assistant,
            ),
          ],
        );
  }
}
