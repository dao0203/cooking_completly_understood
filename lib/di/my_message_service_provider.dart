import 'package:cooking_completly_understood/data/services/my_message_service.dart';
import 'package:cooking_completly_understood/di/isar_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';

final myMessageServiceProvider = Provider((ref) async {
  final Isar isar = await ref.read(isarProvider);
  return MyMessageService(isar);
});
