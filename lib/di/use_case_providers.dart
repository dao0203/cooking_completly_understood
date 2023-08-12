import 'package:recipe_lite/di/repository_providers.dart';
import 'package:recipe_lite/domain/use_cases/get_recipe_messages_use_case.dart';
import 'package:recipe_lite/domain/use_cases/suggest_recipe_considering_weather_and_temperature_use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getRecipeMessagesUseCaseProvider = Provider((ref) {
  return GetRecipeMessagesUseCase(
    ref.watch(myMessageRepositoryProvider),
    ref.watch(recipeRepositoryProvider),
  );
});

final suggestRecipeConsideringWeatherAndTemperatureUseCaseProvider =
    Provider((ref) async {
  final myMessageRepository = await ref.read(myMessageRepositoryProvider);
  final positionRepository = ref.read(positionRepositoryProvider);
  final weatherRepository = ref.read(weatherRepositoryProvider);
  final messageRepository = ref.read(messageRepositoryProvider);
  final recipeRepository = await ref.read(recipeRepositoryProvider);
  return SuggestRecipeConsideringWeatherAndTemperatureUseCase(
    myMessageRepository,
    positionRepository,
    weatherRepository,
    messageRepository,
    recipeRepository,
  );
});
