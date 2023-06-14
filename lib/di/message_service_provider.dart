import 'package:cooking_completly_understood/data/sources/chat_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chatServiceProvider = Provider<ChatService>((ref) {
  return ChatService();
});
