import 'package:cooking_completly_understood/di/repository_providers.dart';
import 'package:cooking_completly_understood/domain/use_cases/change_recipe_of_favorite_status_use_case.dart';
import 'package:cooking_completly_understood/domain/use_cases/change_recipe_of_made_status_use_case.dart';
import 'package:cooking_completly_understood/domain/use_cases/get_recipe_messages_use_case.dart';
import 'package:cooking_completly_understood/domain/use_cases/suggest_recipe_considering_weather_and_temperature_use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getRecipeMessagesUseCaseProvider = Provider((ref) async {
  final myMessageRepository = await ref.read(myMessageRepositoryProvider);
  final recipeRepository = await ref.read(recipeRepositoryProvider);
  return GetRecipeMessagesUseCase(myMessageRepository, recipeRepository);
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

// ChangeRecipeOfFavoriteStatusUseCase
final changeRecipeOfFavoriteStatusUseCaseProvider = Provider((ref) async {
  final recipeRepository = await ref.read(recipeRepositoryProvider);
  return ChangeRecipeOfFavoriteStatusUseCase(recipeRepository);
});


// ChangeRecipeOfMadeStatusUseCase
final changeRecipeOfMadeStatusUseCaseProvider = Provider((ref) async {
  final recipeRepository = await ref.read(recipeRepositoryProvider);
  return ChangeRecipeOfMadeStatusUseCase(recipeRepository);
});
