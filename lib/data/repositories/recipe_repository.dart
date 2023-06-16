import 'dart:async';

import 'package:cooking_completly_understood/data/models/immu_recipe/immu_recipe.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/data/sources/recipe_service.dart';

class RecipeRepository {
  final RecipeService _recipeService;
  RecipeRepository(this._recipeService);

  // レシピを全て取得するメソッド
  Stream<List<ImmuRecipe>> getAllRecipes() {
    //レシピを全て取得
    final recipes = _recipeService.getAllRecipes();

    //レシピをImmuRecipeに変換する
    //この機能デカすぎんか？
    StreamTransformer<List<Recipe>, List<ImmuRecipe>> transformer =
        StreamTransformer.fromHandlers(
      handleData: (recipes, sink) {
        List<ImmuRecipe> immuRecipes = recipes.map((e) {
          return ImmuRecipe(
            id: e.id,
            role: e.role,
            name: e.name,
            description: e.description,
            cookingTime: e.cookingTime,
            ingredientName: e.ingredientName,
            ingredientQuantity: e.ingredientQuantity,
            stepNumber: e.stepNumber,
            stepDescription: e.stepDescription,
            calorie: e.calorie,
            protein: e.protein,
            fat: e.fat,
            carbohydrate: e.carbohydrate,
            salt: e.salt,
            timeStamp: e.timeStamp,
            isMade: e.isMade,
            isFavorite: e.isFavorite,
          );
        }).toList();

        sink.add(immuRecipes);
      },
    );

    //レシピをImmuRecipeに変換して返す
    return recipes.transform(transformer);
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
  Stream<ImmuRecipe?> getRecipeById(int id) {
    final recipe = _recipeService.getRecipeById(id);

    //レシピをImmuRecipeに変換する
    StreamTransformer<Recipe?, ImmuRecipe?> transformer =
        StreamTransformer.fromHandlers(
      handleData: (recipe, sink) {
        if (recipe == null) {
          //レシピがnullの場合はnullを返す
          sink.add(null);
        } else {
          ImmuRecipe immuRecipe = ImmuRecipe(
            id: recipe.id,
            role: recipe.role,
            name: recipe.name,
            description: recipe.description,
            cookingTime: recipe.cookingTime,
            ingredientName: recipe.ingredientName,
            ingredientQuantity: recipe.ingredientQuantity,
            stepNumber: recipe.stepNumber,
            stepDescription: recipe.stepDescription,
            calorie: recipe.calorie,
            protein: recipe.protein,
            fat: recipe.fat,
            carbohydrate: recipe.carbohydrate,
            salt: recipe.salt,
            timeStamp: recipe.timeStamp,
            isMade: recipe.isMade,
            isFavorite: recipe.isFavorite,
          );
          sink.add(immuRecipe);
        }
      },
    );

    //レシピをImmuRecipeに変換して返す
    return recipe.transform(transformer);
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
