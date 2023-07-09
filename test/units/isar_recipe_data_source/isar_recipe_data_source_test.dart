import 'package:cooking_completly_understood/data/models/recipe_model/recipe_model.dart';
import 'package:cooking_completly_understood/data/sources/local/isar_recipe_data_source.dart';
import 'package:cooking_completly_understood/utils/role.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';

import '../../dummies/dummy_recipe_model_list.dart';
import '../../utils/isar_db_directory.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late Isar isar;
  late IsarRecipeDataSource isarRecipeDataSource;
  late List<RecipeModel> getAllResult;
  late List<RecipeModel> insertResult;
  final IsarDbDirectory isarDbDirectory = IsarDbDirectory();

  setUpAll(() async {
    // テスト用のIsarインスタンスを作成
    await Isar.initializeIsarCore(download: true);

    //テスト用のディレクトリを作成する
    await isarDbDirectory.create();

    // テスト用のディレクトリのパスを取得
    isar =
        await Isar.open([RecipeModelSchema], directory: isarDbDirectory.path);
    isarRecipeDataSource = IsarRecipeDataSource(isar);

    // テスト用のデータをlistの大きさだけinsert
    for (final recipeModel in dummyRecipeModelList) {
      await isarRecipeDataSource.insert(recipeModel);
    }

    // getAllの結果を取得
    getAllResult = await isarRecipeDataSource.getAll().first;

    // insertの結果を取得
    // テスト用のデータを作成
    final recipeModel = RecipeModel()
      ..name = 'test4'
      ..role = Role.assistant.name
      ..description = 'test4'
      ..cookingTime = 'test4'
      ..ingredientName = ['test4']
      ..ingredientQuantity = ['test4']
      ..stepNumber = ['test4']
      ..stepDescription = ['test4']
      ..calorie = 'test4'
      ..protein = 'test4'
      ..fat = 'test4'
      ..carbohydrate = 'test4'
      ..salt = 'test4'
      ..timeStamp = DateTime.now()
      ..isMade = false
      ..isFavorite = false;
    // テスト用のデータをinsert
    await isarRecipeDataSource.insert(recipeModel);
    // insertの結果を取得
    insertResult = await isarRecipeDataSource.getAll().first;
  });

  tearDownAll(() async {
    await isarDbDirectory.delete();
    await isar.close();
  });

  group('IsarRecipeDataSourceのテスト', () {
    test('getAllのテスト', () async {
      // テスト用のデータを取得
      expect(getAllResult.length, dummyRecipeModelList.length);
    });

    test('insertのテスト', () async {
      // テスト用のデータを取得

      // テスト用のデータを比較
      expect(insertResult.length, dummyRecipeModelList.length + 1);
    });
  });
}
