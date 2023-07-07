//RecipeRepository
import 'package:cooking_completly_understood/data/repositories/food_repository_impl.dart';
import 'package:cooking_completly_understood/data/repositories/message_repository.dart';
import 'package:cooking_completly_understood/data/repositories/recipe_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'data_source_providers.dart';

//RecipeRepository
final recipeRepositoryProvider = Provider((ref) => ref
    .read(recipeDataSourceProvider)
    .then((value) => RecipeRepository(value)));

//MessageRepository
final messageRepositoryProvider = Provider((ref) => ref
    .read(recipeDataSourceProvider)
    .then((recipeService) => ref
        .read(myMessageDataSourceProvider)
        .then((myMessage) => MessageRepository(
              ref.read(positionDataSourceProvider),
              ref.read(openMeteoApiDataSourceProvider),
              ref.read(paLMApiDataSourceProvider),
              recipeService,
              myMessage,
            ))));

//FoodRepository
final foodRepositoryProvider = Provider((ref) => ref
    .read(foodDataSourceProvider)
    .then((value) => FoodRepositoryImpl(value)));
