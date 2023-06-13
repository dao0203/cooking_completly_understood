import 'package:cooking_completly_understood/data/models/immu_recipe/immu_recipe.dart';
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
  Future<Stream<List<ImmuRecipe>>> build() async{
    //MessageStateが初期化された際に初期メッセージを送信する
    ref.read(messageRepositoryProvider).sendInitialMessage();

    //ここでレシピメッセージを取得する
    return  await ref.read(recipeRepositoryProvider).then((value){
      return value.getAllRecipes();
    });
  }

  //TODO: メッセージを送るだけにしたい
  Future<void> sendMessageAndReceiveMessage(String inputedMessage) async {
    //TODO:ChatGPTを呼び出してメッセージを返しているが、MessageRepositoryのみで完結させるようにする
    await ref
        .read(messageRepositoryProvider)
        .sendMessageAndReceiveMessage(inputedMessage)
        .then(

      (message) async {

        //TODO: ここで自分のメッセージと一緒に、相手のメッセージも保存するようにする
        await ref.read(recipeRepositoryProvider).then(
              (value) => value.insertRecipeFromMessage(message),
            );
      },
    );
  }
}
