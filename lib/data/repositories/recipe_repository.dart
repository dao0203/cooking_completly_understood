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
    insertedRecipe.ingredientName = message.recipeIngredients.map((e) => e.name).toList();
    insertedRecipe.ingredientQuantity = message.recipeIngredients.map((e) => e.quantity).toList();
    insertedRecipe.stepNumber = message.recipeSteps.map((e) => e.number).toList();
    insertedRecipe.stepDescription = message.recipeSteps.map((e) => e.description).toList();
    insertedRecipe.calorie = message.nutrition.calorie;
    insertedRecipe.protein = message.nutrition.protein;
    insertedRecipe.fat = message.nutrition.fat;
    insertedRecipe.carbohydrate = message.nutrition.carbohydrate;
    insertedRecipe.salt = message.nutrition.salt;
    //レシピを保存
    await _recipeService.insertRecipe(insertedRecipe);
  }

  // レシピを全て取得するメソッド
  Future<List<ImmuRecipe>> getAllRecipes() async {
    //レシピを全て取得
    final recipes = await _recipeService.getAllRecipes();
    //レシピデータクラスのリストを作成
    final immuRecipes = <ImmuRecipe>[];
    //レシピデータクラスのリストに値を代入
    for (final recipe in recipes) {
      immuRecipes.add(
        ImmuRecipe(
          id: recipe.id,
          name: recipe.name,
          description: recipe.description,
          ingredientName: recipe.ingredientName,
          ingredientQuantity: recipe.ingredientQuantity,
          stepNumber: recipe.stepNumber,
          stepDescription: recipe.stepDescription,
          calorie: recipe.calorie,
          protein: recipe.protein,
          fat: recipe.fat,
          carbohydrate: recipe.carbohydrate,
          salt: recipe.salt,
        ),
      );
    }
    //レシピデータクラスのリストを返す
    return immuRecipes;
  }


}