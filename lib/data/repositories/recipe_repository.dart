import 'dart:async';

import 'package:cooking_completly_understood/data/models/immu_recipe/immu_recipe.dart';
import 'package:cooking_completly_understood/data/models/message/message.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/data/sources/recipe_service.dart';

class RecipeRepository {
  final RecipeService _recipeService;
  RecipeRepository(this._recipeService);

  // レシピを保存するメソッド
  Future<void> insertRecipeFromMessage(Message message) async {
    //保存するレシピデータクラスを作成
    final insertedRecipe = Recipe();
    //レシピデータクラスに値を代入
    insertedRecipe.name = message.recipeName;
    insertedRecipe.description = message.recipeDescription;
    insertedRecipe.ingredientName =
        message.recipeIngredients.map((e) => e.name).toList();
    insertedRecipe.ingredientQuantity =
        message.recipeIngredients.map((e) => e.quantity).toList();
    insertedRecipe.stepNumber =
        message.recipeSteps.map((e) => e.number).toList();
    insertedRecipe.stepDescription =
        message.recipeSteps.map((e) => e.description).toList();
    insertedRecipe.calorie = message.nutrition.calorie;
    insertedRecipe.protein = message.nutrition.protein;
    insertedRecipe.fat = message.nutrition.fat;
    insertedRecipe.carbohydrate = message.nutrition.carbohydrate;
    insertedRecipe.salt = message.nutrition.salt;
    //レシピを保存
    await _recipeService.insertRecipe(insertedRecipe);
  }

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
            name: e.name,
            description: e.description,
            ingredientName: e.ingredientName,
            ingredientQuantity: e.ingredientQuantity,
            stepNumber: e.stepNumber,
            stepDescription: e.stepDescription,
            calorie: e.calorie,
            protein: e.protein,
            fat: e.fat,
            carbohydrate: e.carbohydrate,
            salt: e.salt,
          );
        }).toList();

        sink.add(immuRecipes);
      },
    );

    //レシピをImmuRecipeに変換して返す
    return recipes.transform(transformer);
  }
}
