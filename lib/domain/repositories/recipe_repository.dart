import 'package:cooking_completly_understood/data/models/recipe_model/recipe_model.dart';
import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';

abstract class RecipeRepository {
  // レシピを全て取得するメソッド
  Stream<List<Recipe>> getAllRecipes();

  // レシピを追加するメソッド
  Future<void> insert(RecipeModel recipe);

  //レシピのお気に入り状態を変更するメソッド
  Future<void> changeFavoriteStatus(RecipeModel recipe);

  //idを指定してレシピを取得するメソッド
  Stream<List<Recipe>> getRecipeById(int id);

  //レシピの料理済み状態を変更するメソッド
  Future<void> changeMadeStatus(RecipeModel recipeModel);
}
