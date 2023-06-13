import 'package:cooking_completly_understood/di/message_repository_provider.dart';
import 'package:cooking_completly_understood/di/recipe_repository_provider.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_state.g.dart';

//レシピは全てローカルDBに保存されるが、お勧めされたレシピが採用されたら調理済みにする
//もっと提案ボタンを押したら、ChatGPTに負担をかけずに済むし、メッセージに表示しやすい
//TODO:
// - 自分のメッセージと相手のメッセージを一つのデータクラスに統一する
@riverpod
class MessagesState extends _$MessagesState {
  @override
  FutureOr<List<OpenAIChatCompletionChoiceMessageModel>> build() async{
    //MessageStateが初期化された際に初期メッセージを送信する
    ref.read(messageRepositoryProvider).sendInitialMessage();
    //TODO: RecipeRepositoryからローカルDBに保存されているメッセージを取得してこちらに格納
    //TODO:現状、まだワンショット非同期処理なので、ストリームで実装する必要がある
    return await ref.read(recipeRepositoryProvider).then(
          (value) => value.getAllRecipes().then((value){
            return value.map((e) => OpenAIChatCompletionChoiceMessageModel(
              content: e.toString(),
              role: OpenAIChatMessageRole.assistant,
            )).toList();
          })
        );
  }

  Future<void> sendMessageAndReceiveMessage(String inputedMessage) async {
    //FIXME: 現状は、ユーザーがメッセージを入力した際に、そのメッセージをstateに保存しているが、
    //要件次第では消える可能性大
    // state = [
    //   ...state,
    //   OpenAIChatCompletionChoiceMessageModel(
    //     content: inputedMessage,
    //     role: OpenAIChatMessageRole.user,
    //   ),
    
    // ];
    //ChatGPTを呼び出してメッセージを呼び出し、そのメッセージをstateに保存する
    await ref
        .read(messageRepositoryProvider)
        .sendMessageAndReceiveMessage(inputedMessage)
        .then(
      //現状はString型のメッセージを受け取って、stateに保存しているが、
      //ここのクラスでは、このように状態を保存せず、repository内のビジネスロジックで
      //ローカルDBに保存するように実装する

      (message) async {
        // state = [
        //   ...state,
        //   OpenAIChatCompletionChoiceMessageModel(
        //     content: message,
        //     role: OpenAIChatMessageRole.assistant,
        //   ),
        // ];

        //FIXME: 現在は、メッセージを受け取った際にレシピを保存するようにしているが
        // 本来は、ユーザーがレシピを選択した際にレシピを保存するようにしたい
        await ref.read(recipeRepositoryProvider).then(
              (value) => value.insertRecipeFromMessage(message),
            );
      },
    );
  }
}
