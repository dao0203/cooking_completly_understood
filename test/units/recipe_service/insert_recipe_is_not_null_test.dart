import 'dart:io';
import 'dart:math';
import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/data/services/recipe_service.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as path;

import 'package:flutter_test/flutter_test.dart';

//こちらのURLを参考にしてテストを行なった
//https://zenn.dev/flutteruniv_dev/articles/20220613-055442-flutter-isar-test
//
//テスト実行時にlibisar.dylibが発行されるが、コミットしないようにお願いします
void main() async {
  await Isar.initializeIsarCore(download: true);
  TestWidgetsFlutterBinding.ensureInitialized();
  late Directory dir;
  late Isar isar;
  late RecipeService recipeService;
  //レシピを作成する
  final recipe = [
    Recipe()
      ..name = 'test'
      ..description = 'test'
      ..cookingTime = 'test'
      ..role = 'test'
      ..ingredientName = ['test']
      ..ingredientQuantity = ['test']
      ..stepNumber = ['test']
      ..stepDescription = ['test']
      ..calorie = 'test'
      ..protein = 'test'
      ..fat = 'test'
      ..carbohydrate = 'test'
      ..salt = 'test',
    Recipe()
      ..name = 'test2'
      ..description = 'test2'
      ..cookingTime = 'test2'
      ..role = 'test2'
      ..ingredientName = ['test2']
      ..ingredientQuantity = ['test2']
      ..stepNumber = ['test2']
      ..stepDescription = ['test2']
      ..calorie = 'test2'
      ..protein = 'test2'
      ..fat = 'test2'
      ..carbohydrate = 'test2'
      ..salt = 'test2'
  ];

  setUpAll(() async {
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
  test("レシピを保存できているかどうかを判断する単体テスト", () async {
    //レシピを保存する
    await recipeService.insertRecipe(recipe[0]).then((value) => expect(0, 0));
    await recipeService.insertRecipe(recipe[1]).then((value) => expect(1, 1));
    //保存されているレシピを取得する
    //全てのプロパティが一致するかを検証する
  });

  tearDownAll(
    () async {
      //Isarを閉じる
      await isar.close(deleteFromDisk: true);
      //テスト用のディレクトリを削除する
      if (dir.existsSync()) {
        await dir.delete(recursive: true);
      }
    },
  );
}
