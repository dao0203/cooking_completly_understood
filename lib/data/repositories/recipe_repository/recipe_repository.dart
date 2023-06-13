import 'package:cooking_completly_understood/data/models/immu_recipe/immu_recipe.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/data/sources/recipe_service.dart';

class RecipeRepository {
  final RecipeService _recipeService;
  RecipeRepository(this._recipeService);

  // レシピを保存するメソッド
  Future<void> insertRecipe(ImmuRecipe recipe) async {

    //保存するレシピデータクラスを作成
    final insertedRecipe = Recipe();
    //レシピデータクラスに値を代入
    insertedRecipe.name = recipe.name;
    insertedRecipe.description = recipe.description;
    insertedRecipe.ingredientName = recipe.ingredientName;
    insertedRecipe.ingredientQuantity = recipe.ingredientQuantity;
    insertedRecipe.stepNumber = recipe.stepNumber;
    insertedRecipe.stepDescription = recipe.stepDescription;
    insertedRecipe.calorie = recipe.calorie;
    insertedRecipe.protein = recipe.protein;
    insertedRecipe.fat = recipe.fat;
    insertedRecipe.carbohydrate = recipe.carbohydrate;
    //レシピを保存
    await _recipeService.insertRecipe(insertedRecipe);
  }

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
        ),
      );
    }
    //レシピデータクラスのリストを返す
    return immuRecipes;
  }


}