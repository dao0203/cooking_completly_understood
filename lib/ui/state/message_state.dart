import 'package:cooking_completly_understood/data/models/recipe_message/recipe_message.dart';
import 'package:cooking_completly_understood/di/get_recipe_messages_use_case_provider.dart';
import 'package:cooking_completly_understood/di/message_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_state.g.dart';

@riverpod
class MessagesState extends _$MessagesState {
  @override
  Future<Stream<List<RecipeMessage>>> build() async {
    return await ref.read(getRecipeMessagesUseCaseProvider).then(
          (value) => value.getRecipeMessages(),
        );
  }

  //メッセージを送信するメソッド
  Future<void> sendMessageAndReceiveMessage(String inputedMessage) async {
    await ref.read(messageRepositoryProvider).then(
          (value) => value.sendMessage(inputedMessage),
        );
  }
}
