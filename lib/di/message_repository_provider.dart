import 'package:cooking_completly_understood/data/repositories/message_repository.dart';
import 'package:cooking_completly_understood/di/maker_suite_service_provider.dart';
import 'package:cooking_completly_understood/di/my_message_data_source_provider.dart';
import 'package:cooking_completly_understood/di/position_data_source_providier.dart';
import 'package:cooking_completly_understood/di/recipe_data_source_provider.dart';
import 'package:cooking_completly_understood/di/weather_info_data_source_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final messageRepositoryProvider = Provider((ref) async {
  final futureMessageRepository = ref.read(recipeDataSourceProvider).then(
        (recipeService) => ref.read(myMessageDataSourceProvider).then(
              (myMessage) => MessageRepository(
                ref.read(positionDataSourceProvider),
                ref.read(weatherInfoDataSourceProvider),
                ref.read(makerSuiteServiceProvider),
                recipeService,
                myMessage,
              ),
            ),
      );
  return futureMessageRepository;
});
