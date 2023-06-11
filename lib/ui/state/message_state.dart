import 'package:cooking_completly_understood/di/message_repository_provider.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_state.g.dart';

@riverpod
class MessagesState extends _$MessagesState {
  @override
  List<OpenAIChatCompletionChoiceMessageModel> build() {
    ref.read(messageRepositoryProvider).sendInitialMessage();
    return [];
  }

  Future<void> sendMessageAndReceiveMessage(String message) async {
    state = [
      ...state,
      OpenAIChatCompletionChoiceMessageModel(
        content: message,
        role: OpenAIChatMessageRole.user,
      ),
    ];
    await ref
        .read(messageRepositoryProvider)
        .sendMessageAndReceiveMessage(message)
        .then(
          (value) => state = [
            ...state,
            value,
          ],
        );
  }
}
