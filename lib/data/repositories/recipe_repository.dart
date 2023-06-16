import 'dart:async';

import 'package:cooking_completly_understood/data/models/immu_recipe/immu_recipe.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/data/sources/recipe_service.dart';

class RecipeRepository {
  final RecipeService _recipeService;
  RecipeRepository(this._recipeService);

  // レシピを全て取得するメソッド
  Stream<List<Recipe>> getAllRecipes() {
    //レシピを全て取得
    return _recipeService.getAllRecipes();
  }

  //レシピのお気に入り状態を変更するメソッド
  Future<void> changeFavoriteStatus(ImmuRecipe immuRecipe) {
    final Recipe recipe = Recipe()
      ..id = immuRecipe.id
      ..role = immuRecipe.role
      ..name = immuRecipe.name
      ..description = immuRecipe.description
      ..cookingTime = immuRecipe.cookingTime
      ..ingredientName = immuRecipe.ingredientName
      ..ingredientQuantity = immuRecipe.ingredientQuantity
      ..stepNumber = immuRecipe.stepNumber
      ..stepDescription = immuRecipe.stepDescription
      ..calorie = immuRecipe.calorie
      ..protein = immuRecipe.protein
      ..fat = immuRecipe.fat
      ..carbohydrate = immuRecipe.carbohydrate
      ..salt = immuRecipe.salt
      ..timeStamp = immuRecipe.timeStamp
      ..isMade = immuRecipe.isMade
      ..isFavorite = !immuRecipe.isFavorite; //お気に入り状態を反転させる
    return _recipeService.changeFavoriteStatus(recipe);
  }

  //idを指定してレシピを取得するメソッド
  Stream<List<Recipe>> getRecipeById(int id) {
    return  _recipeService.getRecipeById(id);
  }

  //レシピの料理済み状態を変更するメソッド
  Future<void> changeMadeStatus(ImmuRecipe immuRecipe) {
    final Recipe recipe = Recipe()
      ..id = immuRecipe.id
      ..role = immuRecipe.role
      ..name = immuRecipe.name
      ..description = immuRecipe.description
      ..cookingTime = immuRecipe.cookingTime
      ..ingredientName = immuRecipe.ingredientName
      ..ingredientQuantity = immuRecipe.ingredientQuantity
      ..stepNumber = immuRecipe.stepNumber
      ..stepDescription = immuRecipe.stepDescription
      ..calorie = immuRecipe.calorie
      ..protein = immuRecipe.protein
      ..fat = immuRecipe.fat
      ..carbohydrate = immuRecipe.carbohydrate
      ..salt = immuRecipe.salt
      ..timeStamp = immuRecipe.timeStamp
      ..isMade = !immuRecipe.isMade //料理済み状態を反転させる
      ..isFavorite = immuRecipe.isFavorite;
    return _recipeService.changeMadeStatus(recipe);
  }
}
