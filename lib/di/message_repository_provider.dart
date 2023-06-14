import 'package:cooking_completly_understood/data/repositories/message_repository.dart';
import 'package:cooking_completly_understood/di/message_service_provider.dart';
import 'package:cooking_completly_understood/di/my_message_service_provider.dart';
import 'package:cooking_completly_understood/di/position_data_source_providier.dart';
import 'package:cooking_completly_understood/di/recipe_service_provider.dart';
import 'package:cooking_completly_understood/di/weather_info_data_source_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final messageRepositoryProvider = Provider((ref) async {
  final futureMessageRepository = ref.read(recipeServiceProvider).then(
        (recipeService) => ref.read(myMessageServiceProvider).then(
              (myMessage) => MessageRepository(
                ref.read(positionDataSourceProvider),
                ref.read(weatherInfoDataSourceProvider),
                ref.read(chatServiceProvider),
                recipeService,
                myMessage,
              ),
            ),
      );
  return futureMessageRepository;
});
