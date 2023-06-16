import 'package:cooking_completly_understood/data/models/recipe_message/recipe_message.dart';
import 'package:cooking_completly_understood/di/message_repository_provider.dart';
import 'package:cooking_completly_understood/di/recipe_repository_provider.dart';
import 'package:cooking_completly_understood/utils/transformer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'message_state.g.dart';

@riverpod
class MessagesState extends _$MessagesState {
  @override
  Future<Stream<List<RecipeMessage>>> build() async {
    //MessageStateが初期化された際に初期メッセージを送信する
    final messages = await ref.read(messageRepositoryProvider).then(
          (value) => value
              .getAllMyMessages()
              .transform(myMessageToRecipeMessageTransformer),
        );

    final recipes = await ref.read(recipeRepositoryProvider).then(
          (value) =>
              value.getAllRecipes().transform(recipeToRecipeMessageTransformer),
        );

    return Rx.combineLatest2(messages, recipes, (mes, rec) {
      final messageList = mes + rec;
      messageList.sort((a, b) => a.timeStamp.compareTo(b.timeStamp));
      return messageList;
    });
  }

  //メッセージをChatGPTに送信するメソッド
  Future<void> sendMessageAndReceiveMessage(String inputedMessage) async {
    await ref.read(messageRepositoryProvider).then(
          (value) => value.sendMessage(inputedMessage),
        );
  }
}
