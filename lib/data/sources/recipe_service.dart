import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

class RecipeService {
  final Isar _isar;
  RecipeService(this._isar);

  // レシピのクエリを作成するメソッド
  Query<Recipe> get _recipeGetAllQuery =>
      _isar.recipes.where(sort: Sort.asc).build();

  // レシピを保存するメソッド
  Future<void> insertRecipe(Recipe recipe) async {
    await _isar.writeTxn(
      () async {
        await _isar.recipes
            .put(recipe)
            .then((value) => debugPrint("レシピを保存しました"));
      },
    );
  }

  // レシピのお気に入り状態を変更するメソッド
  Future<void> changeFavoriteStatus(Recipe recipe) async {
    await _isar.writeTxn(
      () async {
        await _isar.recipes
            .put(recipe)
            .then((value) => debugPrint("レシピのお気に入り状態を変更しました"));
      },
    );
  }

  //レシピの料理済み状態を変更するメソッド
  Future<void> changeMadeStatus(Recipe recipe) async {
    await _isar.writeTxn(
      () async {
        await _isar.recipes
            .put(recipe)
            .then((value) => debugPrint("レシピの料理済み状態を変更しました"));
      },
    );
  }

  // レシピを全て取得するメソッド
  Stream<List<Recipe>> getAllRecipes() {
    return _recipeGetAllQuery.watch(fireImmediately: true);
  }
}
