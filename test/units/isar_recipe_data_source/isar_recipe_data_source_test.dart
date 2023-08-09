import 'package:cooking_completly_understood/data/models/recipe_entity/recipe_model.dart';
import 'package:cooking_completly_understood/data/sources/local/isar_recipe_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';

import '../../mocks/mock_recipe_models.dart';
import '../../utils/isar_db_directory.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late Isar isar;
  late IsarRecipeDataSource isarRecipeDataSource;
  late List<RecipeModel> getAllResult;
  late List<RecipeModel> insertResult;
  late List<RecipeModel> getByIdResult;
  late List<RecipeModel> changeFavoriteStatusResult;
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
    for (final recipeModel in mockRecipeModelList) {
      await isarRecipeDataSource.insert(recipeModel);
    }

    // getAllの結果を取得
    getAllResult = await isarRecipeDataSource.getAll().first;
  });

  tearDownAll(() async {
    await isarDbDirectory.delete();
    await isar.close();
  });

  group('getAll', () {
    setUpAll(() async {
      getAllResult = await isarRecipeDataSource.getAll().first;
    });
    test('getAllの結果の長さがmockRecipeModelListの長さと同じであること', () {
      expect(getAllResult.length, mockRecipeModelList.length);
    });
    test("getAllの結果のnameがmockRecipeModelListのnameと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].name, mockRecipeModelList[i].name);
      }
    });
    test("getAllの結果のroleがmockRecipeModelListのroleと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].role, mockRecipeModelList[i].role);
      }
    });
    test("getAllの結果のdescriptionがmockRecipeModelListのdescriptionと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].description, mockRecipeModelList[i].description);
      }
    });
    test("getAllの結果のcookingTimeがmockRecipeModelListのcookingTimeと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].cookingTime, mockRecipeModelList[i].cookingTime);
      }
    });
    test("getAllの結果のingredientNameがmockRecipeModelListのingredientNameと同じであること",
        () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].ingredientName,
            mockRecipeModelList[i].ingredientName);
      }
    });
    test(
        "getAllの結果のingredientQuantityがmockRecipeModelListのingredientQuantityと同じであること",
        () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].ingredientQuantity,
            mockRecipeModelList[i].ingredientQuantity);
      }
    });
    test("getAllの結果のstepNumberがmockRecipeModelListのstepNumberと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].stepNumber, mockRecipeModelList[i].stepNumber);
      }
    });
    test(
        "getAllの結果のstepDescriptionがmockRecipeModelListのstepDescriptionと同じであること",
        () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].stepDescription,
            mockRecipeModelList[i].stepDescription);
      }
    });
    test("getAllの結果のcalorieがmockRecipeModelListのcalorieと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].calorie, mockRecipeModelList[i].calorie);
      }
    });
    test("getAllの結果のproteinがmockRecipeModelListのproteinと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].protein, mockRecipeModelList[i].protein);
      }
    });
    test("getAllの結果のfatがmockRecipeModelListのfatと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].fat, mockRecipeModelList[i].fat);
      }
    });
    test("getAllの結果のcarbohydrateがmockRecipeModelListのcarbohydrateと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(
            getAllResult[i].carbohydrate, mockRecipeModelList[i].carbohydrate);
      }
    });
    test("getAllの結果のsaltがmockRecipeModelListのsaltと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].salt, mockRecipeModelList[i].salt);
      }
    });
    test("getAllの結果のtimeStampがmockRecipeModelListのtimeStampと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].timeStamp, mockRecipeModelList[i].timeStamp);
      }
    });
    test("getAllの結果のisMadeがmockRecipeModelListのisMadeと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].isMade, mockRecipeModelList[i].isMade);
      }
    });
    test("getAllの結果のisFavoriteがmockRecipeModelListのisFavoriteと同じであること", () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].isFavorite, mockRecipeModelList[i].isFavorite);
      }
    });
  });

  group('insert', () {
    setUpAll(() async {
      getAllResult = await isarRecipeDataSource.getAll().first;
      await isarRecipeDataSource.insert(mockRecipeModelForInsertion);
      insertResult = await isarRecipeDataSource.getAll().first;
    });
    test('insertの結果の長さがgetAllの結果の長さ+1と同じであること', () {
      expect(insertResult.length, getAllResult.length + 1);
    });
    test('insertの結果のnameがmockRecipeModelForInsertionのnameと同じであること', () {
      expect(insertResult.last.name, mockRecipeModelForInsertion.name);
    });
    test('insertの結果のroleがmockRecipeModelForInsertionのroleと同じであること', () {
      expect(insertResult.last.role, mockRecipeModelForInsertion.role);
    });
    test(
        'insertの結果のdescriptionがmockRecipeModelForInsertionのdescriptionと同じであること',
        () {
      expect(insertResult.last.description,
          mockRecipeModelForInsertion.description);
    });
    test(
        'insertの結果のcookingTimeがmockRecipeModelForInsertionのcookingTimeと同じであること',
        () {
      expect(insertResult.last.cookingTime,
          mockRecipeModelForInsertion.cookingTime);
    });
    test(
        'insertの結果のingredientNameがmockRecipeModelForInsertionのingredientNameと同じであること',
        () {
      expect(insertResult.last.ingredientName,
          mockRecipeModelForInsertion.ingredientName);
    });
    test(
        'insertの結果のingredientQuantityがmockRecipeModelForInsertionのingredientQuantityと同じであること',
        () {
      expect(insertResult.last.ingredientQuantity,
          mockRecipeModelForInsertion.ingredientQuantity);
    });
    test('insertの結果のstepNumberがmockRecipeModelForInsertionのstepNumberと同じであること',
        () {
      expect(
          insertResult.last.stepNumber, mockRecipeModelForInsertion.stepNumber);
    });
    test(
        'insertの結果のstepDescriptionがmockRecipeModelForInsertionのstepDescriptionと同じであること',
        () {
      expect(insertResult.last.stepDescription,
          mockRecipeModelForInsertion.stepDescription);
    });
    test('insertの結果のcalorieがmockRecipeModelForInsertionのcalorieと同じであること', () {
      expect(insertResult.last.calorie, mockRecipeModelForInsertion.calorie);
    });
    test('insertの結果のproteinがmockRecipeModelForInsertionのproteinと同じであること', () {
      expect(insertResult.last.protein, mockRecipeModelForInsertion.protein);
    });
    test('insertの結果のfatがmockRecipeModelForInsertionのfatと同じであること', () {
      expect(insertResult.last.fat, mockRecipeModelForInsertion.fat);
    });
    test(
        'insertの結果のcarbohydrateがmockRecipeModelForInsertionのcarbohydrateと同じであること',
        () {
      expect(insertResult.last.carbohydrate,
          mockRecipeModelForInsertion.carbohydrate);
    });
    test('insertの結果のsaltがmockRecipeModelForInsertionのsaltと同じであること', () {
      expect(insertResult.last.salt, mockRecipeModelForInsertion.salt);
    });
    test('insertの結果のtimeStampがmockRecipeModelForInsertionのtimeStampと同じであること',
        () {
      expect(
          insertResult.last.timeStamp, mockRecipeModelForInsertion.timeStamp);
    });
    test('insertの結果のisMadeがmockRecipeModelForInsertionのisMadeと同じであること', () {
      expect(insertResult.last.isMade, mockRecipeModelForInsertion.isMade);
    });
    test('insertの結果のisFavoriteがmockRecipeModelForInsertionのisFavoriteと同じであること',
        () {
      expect(
          insertResult.last.isFavorite, mockRecipeModelForInsertion.isFavorite);
    });
  });

  group('getById', () {
    setUpAll(() async {
      getAllResult = await isarRecipeDataSource.getAll().first;
      getByIdResult = await isarRecipeDataSource.getById(1).first;
    });
    test('getByIdの結果の長さが1であること', () {
      expect(getByIdResult.length, 1);
    });
    test('getByIdの結果のnameがmockRecipeModelListのnameと同じであること', () {
      expect(getByIdResult.first.name, mockRecipeModelList.first.name);
    });
    test('getByIdの結果のroleがmockRecipeModelListのroleと同じであること', () {
      expect(getByIdResult.first.role, mockRecipeModelList.first.role);
    });
    test('getByIdの結果のdescriptionがmockRecipeModelListのdescriptionと同じであること', () {
      expect(getByIdResult.first.description,
          mockRecipeModelList.first.description);
    });
    test('getByIdの結果のcookingTimeがmockRecipeModelListのcookingTimeと同じであること', () {
      expect(getByIdResult.first.cookingTime,
          mockRecipeModelList.first.cookingTime);
    });
    test('getByIdの結果のingredientNameがmockRecipeModelListのingredientNameと同じであること',
        () {
      expect(getByIdResult.first.ingredientName,
          mockRecipeModelList.first.ingredientName);
    });
    test(
        'getByIdの結果のingredientQuantityがmockRecipeModelListのingredientQuantityと同じであること',
        () {
      expect(getByIdResult.first.ingredientQuantity,
          mockRecipeModelList.first.ingredientQuantity);
    });
    test('getByIdの結果のstepNumberがmockRecipeModelListのstepNumberと同じであること', () {
      expect(
          getByIdResult.first.stepNumber, mockRecipeModelList.first.stepNumber);
    });
    test(
        'getByIdの結果のstepDescriptionがmockRecipeModelListのstepDescriptionと同じであること',
        () {
      expect(getByIdResult.first.stepDescription,
          mockRecipeModelList.first.stepDescription);
    });
    test('getByIdの結果のcalorieがmockRecipeModelListのcalorieと同じであること', () {
      expect(getByIdResult.first.calorie, mockRecipeModelList.first.calorie);
    });
    test('getByIdの結果のproteinがmockRecipeModelListのproteinと同じであること', () {
      expect(getByIdResult.first.protein, mockRecipeModelList.first.protein);
    });
    test('getByIdの結果のfatがmockRecipeModelListのfatと同じであること', () {
      expect(getByIdResult.first.fat, mockRecipeModelList.first.fat);
    });
    test('getByIdの結果のcarbohydrateがmockRecipeModelListのcarbohydrateと同じであること',
        () {
      expect(getByIdResult.first.carbohydrate,
          mockRecipeModelList.first.carbohydrate);
    });
    test('getByIdの結果のsaltがmockRecipeModelListのsaltと同じであること', () {
      expect(getByIdResult.first.salt, mockRecipeModelList.first.salt);
    });
    test('getByIdの結果のtimeStampがmockRecipeModelListのtimeStampと同じであること', () {
      expect(
          getByIdResult.first.timeStamp, mockRecipeModelList.first.timeStamp);
    });
    test('getByIdの結果のisMadeがmockRecipeModelListのisMadeと同じであること', () {
      expect(getByIdResult.first.isMade, mockRecipeModelList.first.isMade);
    });
    test('getByIdの結果のisFavoriteがmockRecipeModelListのisFavoriteと同じであること', () {
      expect(
          getByIdResult.first.isFavorite, mockRecipeModelList.first.isFavorite);
    });
  });

  group('changeFavoriteStatus', () {
    setUpAll(() async {
      getAllResult = await isarRecipeDataSource.getAll().first;
      await isarRecipeDataSource.changeFavoriteStatus(getAllResult.first);
      changeFavoriteStatusResult = await isarRecipeDataSource.getAll().first;
    });
    test(
        "changeFavoriteStatusの結果のisFavoriteがmockRecipeModelListのisFavoriteと同じになること",
        () {
          //お気に入りを反転しているのはUseCase層なので、ここでは反転していないことを確認する
      expect(changeFavoriteStatusResult.first.isFavorite,
          mockRecipeModelList.first.isFavorite);
    });
  });

  group('changeMadeStatus', () {
    setUpAll(() async {
      getAllResult = await isarRecipeDataSource.getAll().first;
      await isarRecipeDataSource.changeMadeStatus(getAllResult.first);
      changeFavoriteStatusResult = await isarRecipeDataSource.getAll().first;
    });
    test("changeMadeStatusの結果のisMadeがmockRecipeModelListのisMadeと同じになること", () {
      //料理済みを反転しているのはUseCase層なので、ここでは反転していないことを確認する
      expect(changeFavoriteStatusResult.first.isMade,
          mockRecipeModelList.first.isMade);
    });
  });
}
