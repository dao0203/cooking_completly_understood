import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:isar/isar.dart';

class RecipeService {
  final Isar _isar;
  RecipeService(this._isar);

  // レシピを保存するメソッド
  Future<void> insertRecipe(Recipe recipe) async {
    await _isar.writeTxn(
      () async {
        await _isar.recipes.put(recipe);
      },
    );
  }

  // レシピを全て取得するメソッド
  Future<List<Recipe>> getAllRecipes() async {
    return _isar.txn(
      () async {
        return _isar.recipes.where().findAll();
      },
    );
  }
}
