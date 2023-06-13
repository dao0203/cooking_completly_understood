import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

class RecipeService {
  final Isar _isar;
  RecipeService(this._isar);

  // レシピのクエリを作成するメソッド
  Query<Recipe> get _recipeQuery => _isar.recipes.where(sort: Sort.asc).build();

  // レシピを保存するメソッド
  Future<void> insertRecipe(Recipe recipe) async {
    await _isar.writeTxn(
      () async {
        await _isar.recipes.put(recipe).then((value) => debugPrint("success"));
      },
    );
  }

  // レシピを全て取得するメソッド
  Stream<List<Recipe>> getAllRecipes() {
    return _recipeQuery.watch(fireImmediately: true);
  }
}
