import 'dart:async';
import 'dart:io';
import 'package:async/async.dart';
import 'package:cooking_completly_understood/data/models/recipe_model/recipe_model.dart';
import 'package:cooking_completly_understood/data/sources/local/isar_recipe_data_source.dart';
import 'package:cooking_completly_understood/utils/role.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../dummies/dummy_recipe_model_list.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late Isar isar;
  late IsarRecipeDataSource isarRecipeDataSource;
  late List<RecipeModel> result;

  setUpAll(() async {
    // テスト用のIsarインスタンスを作成
    await Isar.initializeIsarCore(download: true);
    debugPrint('setUpAll:ここまできました1');
    isar = await Isar.open([RecipeModelSchema], directory: 'test/isar');
    debugPrint('setUpAll:ここまできました2');
    isarRecipeDataSource = IsarRecipeDataSource(isar);

    // テスト用のデータをlistの大きさだけinsert
    for (final recipeModel in dummyRecipeModelList) {
      await isarRecipeDataSource.insert(recipeModel);
    }

    // テスト用のデータを取得
    result = await isarRecipeDataSource.getAll().first;
  });

  tearDownAll(() async {
    // テスト用のディレクトリのパスを取得
    final dir = Directory(isar.directory!);
    // テスト用のディレクトリを削除
    await dir.delete(recursive: true);
    await isar.close();
  });

  group('IsarRecipeDataSourceのテスト', () {
    test('getAllのテスト', () async {
      // テスト用のデータを取得
      debugPrint('result:${result.length}');
      expect(result.length, dummyRecipeModelList.length);
    });

    test('insertのテスト', () async {
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
      // テスト用のデータを取得
      final result = await isarRecipeDataSource.getAll().first;
      // テスト用のデータを比較
      expect(result.length, dummyRecipeModelList.length + 1);
    });
  });
}
