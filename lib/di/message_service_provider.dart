
import 'package:cooking_completly_understood/data/sources/message_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final messageServiceProvider = Provider<MessageService>((ref) {
  return MessageService();
});