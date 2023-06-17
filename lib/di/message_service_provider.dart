import 'package:cooking_completly_understood/data/services/chat_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chatServiceProvider = Provider<ChatService>((ref) {
  return ChatService();
});
