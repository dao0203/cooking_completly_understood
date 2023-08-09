import 'package:cooking_completly_understood/data/models/recipe_entity/recipe_model.dart';
import 'package:cooking_completly_understood/di/repository_providers.dart';
import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_by_id_state.g.dart';

@riverpod
class RecipeByIdState extends _$RecipeByIdState {
  @override
  Future<Stream<List<Recipe>>> build(int id) async {
    return await ref.read(recipeRepositoryProvider).then(
      (value) {
        return value.getRecipeById(id);
      },
    );
  }

  //レシピのお気に入り状態を変更するメソッド
  Future<void> changeFavoriteStatus(Recipe recipe) async {
    await ref.read(recipeRepositoryProvider).then(
      (value) {
        return value.changeFavoriteStatus(
          RecipeModel()
            ..id = recipe.id
            ..name = recipe.name
            ..role = recipe.role
            ..description = recipe.description
            ..cookingTime = recipe.cookingTime
            ..ingredientName = recipe.ingredientName
            ..ingredientQuantity = recipe.ingredientQuantity
            ..stepNumber = recipe.stepNumber
            ..stepDescription = recipe.stepDescription
            ..calorie = recipe.calorie
            ..protein = recipe.protein
            ..fat = recipe.fat
            ..carbohydrate = recipe.carbohydrate
            ..salt = recipe.salt
            ..timeStamp = recipe.timeStamp
            ..isMade = recipe.isMade
            ..isFavorite = !recipe.isFavorite,
        );
      },
    );
  }

  //レシピの料理済み状態を変更するメソッド
  Future<void> changeMadeStatus(Recipe recipe) async {
    await ref.read(recipeRepositoryProvider).then(
      (value) {
        return value.changeMadeStatus(
          RecipeModel()
            ..id = recipe.id
            ..name = recipe.name
            ..role = recipe.role
            ..description = recipe.description
            ..cookingTime = recipe.cookingTime
            ..ingredientName = recipe.ingredientName
            ..ingredientQuantity = recipe.ingredientQuantity
            ..stepNumber = recipe.stepNumber
            ..stepDescription = recipe.stepDescription
            ..calorie = recipe.calorie
            ..protein = recipe.protein
            ..fat = recipe.fat
            ..carbohydrate = recipe.carbohydrate
            ..salt = recipe.salt
            ..timeStamp = recipe.timeStamp
            ..isMade = !recipe.isMade
            ..isFavorite = recipe.isFavorite,
        );
      },
    );
  }
}
