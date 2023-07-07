import 'dart:async';

import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/data/models/recipe_model/recipe_model.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/recipe_data_source.dart';

class RecipeRepository {
  final RecipeDataSource _recipeService;
  RecipeRepository(this._recipeService);

  // レシピを全て取得するメソッド
  Stream<List<RecipeModel>> getAllRecipes() {
    //レシピを全て取得
    return _recipeService.getAll();
  }

  //レシピのお気に入り状態を変更するメソッド
  Future<void> changeFavoriteStatus(Recipe recipe) {
    final RecipeModel recipeModel = RecipeModel()
      ..id = recipe.id
      ..role = recipe.role
      ..name = recipe.name
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
      ..isFavorite = !recipe.isFavorite; //お気に入り状態を反転させる
    return _recipeService.changeFavoriteStatus(recipeModel);
  }

  //idを指定してレシピを取得するメソッド
  Stream<List<RecipeModel>> getRecipeById(int id) {
    return _recipeService.getById(id);
  }

  //レシピの料理済み状態を変更するメソッド
  Future<void> changeMadeStatus(Recipe recipe) {
    final RecipeModel recipeModel = RecipeModel()
      ..id = recipe.id
      ..role = recipe.role
      ..name = recipe.name
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
      ..isMade = !recipe.isMade //料理済み状態を反転させる
      ..isFavorite = recipe.isFavorite;
    return _recipeService.changeMadeStatus(recipeModel);
  }
}
