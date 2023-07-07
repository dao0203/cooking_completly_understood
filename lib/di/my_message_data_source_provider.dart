import 'package:cooking_completly_understood/data/sources/local/isar_my_message_data_source.dart';
import 'package:cooking_completly_understood/di/isar_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';

final myMessageDataSourceProvider = Provider(
  (ref) async {
    final Isar isar = await ref.read(isarProvider);
    return IsarMyMessageDataSource(isar);
  },
);
