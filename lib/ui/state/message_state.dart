import 'package:recipe_lite/di/use_case_providers.dart';
import 'package:recipe_lite/domain/models/recipe_message/recipe_message.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_state.g.dart';

@riverpod
class MessagesState extends _$MessagesState {
  @override
  Stream<List<RecipeMessage>> build() {
    return ref.watch(getRecipeMessagesUseCaseProvider).call(null);
  }

  //メッセージを送信するメソッド
  Future<void> sendMessageAndReceiveMessage(String inputedMessage) async {
    await ref
        .read(suggestRecipeConsideringWeatherAndTemperatureUseCaseProvider)
        .then((value) => value.call(inputedMessage));
  }
}
