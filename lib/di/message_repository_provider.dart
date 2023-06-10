import 'package:cooking_completly_understood/data/repositories/message_repository.dart';
import 'package:cooking_completly_understood/di/position_data_source_providier.dart';
import 'package:cooking_completly_understood/di/weather_info_data_source_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final messageRepositoryProvider = Provider<MessageRepository>((ref) {
  return MessageRepository(
    ref.read(positionDataSourceProvider),
    ref.read(weatherInfoDataSourceProvider),
  );
});
