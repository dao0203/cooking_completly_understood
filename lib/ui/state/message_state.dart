import 'package:cooking_completly_understood/data/models/recipe_message/recipe_message.dart';
import 'package:cooking_completly_understood/di/message_repository_provider.dart';
import 'package:cooking_completly_understood/di/recipe_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_state.g.dart';

//レシピは全てローカルDBに保存されるが、お勧めされたレシピが採用されたら調理済みにする
//もっと提案ボタンを押したら、ChatGPTに負担をかけずに済むし、メッセージに表示しやすい
//TODO:
// - 自分のメッセージと相手のメッセージを一つのデータクラスに統一する
@riverpod
class MessagesState extends _$MessagesState {
  @override
  Future<Stream<List<RecipeMessage>>> build() async {
    //MessageStateが初期化された際に初期メッセージを送信する
    return await ref.read(messageRepositoryProvider).then((value) {
      value.sendInitialMessage();
      return value.getAllRecipeMessages();
    });
  }

  //TODO: メッセージを送るだけにしたい
  Future<void> sendMessageAndReceiveMessage(String inputedMessage) async {
    //TODO:ChatGPTを呼び出してメッセージを返しているが、MessageRepositoryのみで完結させるようにする
    await ref.read(messageRepositoryProvider).then(
          (value) => value.sendMessage(inputedMessage),
        );
  }
}
