import 'package:cooking_completly_understood/di/use_case_providers.dart';
import 'package:cooking_completly_understood/domain/models/recipe_message/recipe_message.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_state.g.dart';

@riverpod
class MessagesState extends _$MessagesState {
  @override
  Future<Stream<List<RecipeMessage>>> build() async {
    return await ref
        .read(getRecipeMessagesUseCaseProvider)
        .then((value) => value.call(null));
  }

  //メッセージを送信するメソッド
  Future<void> sendMessageAndReceiveMessage(String inputedMessage) async {
    await ref
        .read(suggestRecipeConsideringWeatherAndTEmperatureUseCaseProvider)
        .then((value) => value.call(inputedMessage));
  }
}
