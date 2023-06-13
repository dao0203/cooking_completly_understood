import 'dart:io';
import 'dart:math';

import 'package:cooking_completly_understood/data/models/immu_recipe/immu_recipe.dart';
import 'package:cooking_completly_understood/data/models/message/message.dart';
import 'package:cooking_completly_understood/data/models/message/nutrition/nutrition.dart';
import 'package:cooking_completly_understood/data/models/message/recipe_ingredients/recipe_ingredients.dart';
import 'package:cooking_completly_understood/data/models/message/recipe_steps/recipe_steps.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/data/repositories/recipe_repository/recipe_repository.dart';
import 'package:cooking_completly_understood/data/sources/recipe_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as path;

void main() async {
  late Directory dir;
  late Isar isar;
  late RecipeService recipeService;
  late RecipeRepository recipeRepository;

  //messageを作成する
  final recipe = [
    const Message(
      recipeName: "test",
      recipeDescription: "test",
      recipeIngredients: [
        RecipeIngredients(
          name: "test",
          quantity: "test",
        ),
      ],
      recipeSteps: [
        RecipeSteps(
          number: "test",
          description: "test",
        ),
      ],
      nutrition: Nutrition(
        calorie: "test",
        protein: "test",
        fat: "test",
        carbohydrate: "test",
      ),
    ),
  ];

  setUpAll(
    () async {
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

      isar = await Isar.open(
        [RecipeSchema],
        directory: dir.path,
      );

      //依存性注入
      recipeService = RecipeService(isar);
      recipeRepository = RecipeRepository(recipeService);
    },
  );

  test(
    "RecipeRepositoryからデータを保存してそのデータがしっかり保存されているを確認するテストダブル",
    () async {
      await recipeRepository.insertRecipeFromMessage(recipe[0]);
      print("ここですか？");
      final actual = await recipeRepository.getAllRecipes();
      print(actual.toString());
      expect(actual, isNotNull);
    },
  );

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
