import 'dart:io';
import 'dart:math';
import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/data/sources/recipe_service.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as path;

import 'package:flutter_test/flutter_test.dart';

//こちらのURLを参考にしてテストを行なった
//https://zenn.dev/flutteruniv_dev/articles/20220613-055442-flutter-isar-test
//
//テスト実行時にlibisar.dylibが発行されるが、コミットしないようにお願いします
void main() async {
  late Directory dir;
  late Isar isar;
  late RecipeService recipeService;
  //レシピを作成する
  final recipe = [
    Recipe()
      ..name = 'test'
      ..description = 'test'
      ..ingredientName = ['test']
      ..ingredientQuantity = ['test']
      ..stepNumber = ['test']
      ..stepDescription = ['test']
      ..calorie = 'test'
      ..protein = 'test'
      ..fat = 'test'
      ..carbohydrate = 'test',
    Recipe()
      ..name = 'test2'
      ..description = 'test2'
      ..ingredientName = ['test2']
      ..ingredientQuantity = ['test2']
      ..stepNumber = ['test2']
      ..stepDescription = ['test2']
      ..calorie = 'test2'
      ..protein = 'test2'
      ..fat = 'test2'
      ..carbohydrate = 'test2',
  ];

  setUpAll(() async {
    await Isar.initializeIsarCore(download: true);
    TestWidgetsFlutterBinding.ensureInitialized();
    final name = Random().nextInt(pow(2, 32) as int);

    dir = Directory(
      path.join(
        Directory.current.path,
        '.dart_tool',
        'test',
        'application_support_$name',
      ),
    );
    //パスが存在しない場合は、再帰的にディレクトリを作成する
    await dir.create(recursive: true);

    //Isarを開く
    isar = await Isar.open(
      [RecipeSchema],
      directory: dir.path,
    );

    recipeService = RecipeService(isar);
  });
  test("レシピを保存して、保存されているデータが保存前のデータと正しいかを検証する単体メソッド", () async {
    //レシピを保存する
    await recipeService.insertRecipe(recipe[0]);
    await recipeService.insertRecipe(recipe[1]);
    //保存されているレシピを取得する
    final result = await recipeService.getAllRecipes();
    //全てのプロパティが一致するかを検証する
    expect(result[0].name, recipe[0].name);
    expect(result[0].description, recipe[0].description);
    expect(result[0].ingredientName, recipe[0].ingredientName);
    expect(result[0].ingredientQuantity, recipe[0].ingredientQuantity);
    expect(result[0].stepNumber, recipe[0].stepNumber);
    expect(result[0].stepDescription, recipe[0].stepDescription);
    expect(result[0].calorie, recipe[0].calorie);
    expect(result[0].protein, recipe[0].protein);
    expect(result[0].fat, recipe[0].fat);
    expect(result[0].carbohydrate, recipe[0].carbohydrate);
    expect(result[1].name, recipe[1].name);
    expect(result[1].description, recipe[1].description);
    expect(result[1].ingredientName, recipe[1].ingredientName);
    expect(result[1].ingredientQuantity, recipe[1].ingredientQuantity);
    expect(result[1].stepNumber, recipe[1].stepNumber);
    expect(result[1].stepDescription, recipe[1].stepDescription);
    expect(result[1].calorie, recipe[1].calorie);
    expect(result[1].protein, recipe[1].protein);
    expect(result[1].fat, recipe[1].fat);
    expect(result[1].carbohydrate, recipe[1].carbohydrate);


  });

  tearDownAll(() async {
    //Isarを閉じる
    await isar.close(deleteFromDisk: true);
    //テスト用のディレクトリを削除する
    if (dir.existsSync()) {
      await dir.delete(recursive: true);
    }
  });
}
