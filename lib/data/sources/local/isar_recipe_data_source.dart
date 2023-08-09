// import 'package:cooking_completly_understood/data/models/recipe_entity/recipe_model.dart';
// import 'package:cooking_completly_understood/data/sources/interfaces/recipe_data_source.dart';
// import 'package:flutter/material.dart';
// import 'package:isar/isar.dart';

// class IsarRecipeDataSource implements RecipeDataSource {
//   final Isar _isar;
//   IsarRecipeDataSource(this._isar);

//   // レシピのクエリを作成するメソッド
//   Query<RecipeModel> get _recipeGetAllQuery =>
//       _isar.recipeModels.where(sort: Sort.asc).build();

//   //レシピのIdを指定してレシピを取得するクエリ
//   Query<RecipeModel> getRecipeByIdQuery(int id) {
//     return _isar.recipeModels.where().idEqualTo(id).limit(1).build();
//   }

//   // レシピを保存するメソッド
//   @override
//   Future<void> insert(RecipeModel recipe) async {
//     await _isar.writeTxn(
//       () async {
//         await _isar.recipeModels
//             .put(recipe)
//             .then((value) => debugPrint("レシピを保存しました"));
//       },
//     );
//   }

//   //idを指定してレシピを取得するメソッド
//   @override
//   Stream<List<RecipeModel>> getById(int id) {
//     return getRecipeByIdQuery(id).watch(fireImmediately: true);
//   }

//   // レシピのお気に入り状態を変更するメソッド
//   @override
//   Future<void> changeFavoriteStatus(RecipeModel recipe) async {
//     await _isar.writeTxn(
//       () async {
//         await _isar.recipeModels
//             .put(recipe)
//             .then((value) => debugPrint("レシピのお気に入り状態を変更しました"));
//       },
//     );
//   }

//   //レシピの料理済み状態を変更するメソッド
//   @override
//   Future<void> changeMadeStatus(RecipeModel recipe) async {
//     await _isar.writeTxn(
//       () async {
//         await _isar.recipeModels
//             .put(recipe)
//             .then((value) => debugPrint("レシピの料理済み状態を変更しました"));
//       },
//     );
//   }

//   // レシピを全て取得するメソッド
//   @override
//   Stream<List<RecipeModel>> getAll() {
//     return _recipeGetAllQuery.watch(fireImmediately: true);
//   }
// }
