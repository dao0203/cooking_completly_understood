import 'package:cooking_completly_understood/data/models/food_model/food_model.dart';
import 'package:cooking_completly_understood/data/sources/local/isar_food_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';

import '../../mocks/mock_food_models.dart';
import '../../utils/isar_db_directory.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late Isar isar;
  late IsarFoodDataSource isarFoodDataSource;
  late List<FoodModel> getAllResult;
  late List<FoodModel> insertResult;
  late List<FoodModel> deleteResult;
  final IsarDbDirectory isarDbDirectory = IsarDbDirectory();

  setUpAll(() async {
    await Isar.initializeIsarCore(download: true);
    await isarDbDirectory.create();

    isar = await Isar.open([FoodModelSchema], directory: isarDbDirectory.path);

    isarFoodDataSource = IsarFoodDataSource(isar);

    for (final foodModel in mockFoodModelList) {
      await isarFoodDataSource.insertFood(foodModel);
    }
  });

  tearDownAll(() async {
    await isar.close();
    await isarDbDirectory.delete();
  });

  group('getAllFood', () {
    setUpAll(() async {
      getAllResult = await isarFoodDataSource.getAllFood().first;
    });
    test('getAllFoodの結果の長さがmockFoodModelListの長さと同じであること', () {
      expect(getAllResult.length, mockFoodModelList.length);
    });

    test('getAllFoodの結果のnameがmockFoodModelListのnameと同じであること', () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].name, mockFoodModelList[i].name);
      }
    });

    test('getAllFoodの結果のcreatedAtがmockFoodModelListのcreatedAtと同じであること', () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].createdAt, mockFoodModelList[i].createdAt);
      }
    });
  });

  group('insertFood', () {
    setUpAll(() async {
      await isarFoodDataSource.insertFood(mockFoodModelForInsertion);
      insertResult = await isarFoodDataSource.getAllFood().first;
    });

    test('insertFoodの結果の長さがmockFoodModelListの長さより1大きいこと', () async {
      expect(insertResult.length, getAllResult.length + 1);
    });

    test('insertFoodの結果のnameがmockFoodModelListのnameと同じであること', () async {
      expect(insertResult.last.name, mockFoodModelForInsertion.name);
    });

    test('insertFoodの結果のcreatedAtがmockFoodModelListのcreatedAtと同じであること',
        () async {
      expect(insertResult.last.createdAt, mockFoodModelForInsertion.createdAt);
    });
  });

  group('deleteFood', () {
    setUpAll(() async {
      getAllResult = await isarFoodDataSource.getAllFood().first;
      await isarFoodDataSource.deleteFood(getAllResult.last.id);
      deleteResult = await isarFoodDataSource.getAllFood().first;
    });

    test('deleteFoodの結果の長さがgetAllFoodの結果の長さより1小さいこと', () async {
      expect(deleteResult.length, getAllResult.length - 1);
    });

    test('deleteFoodの結果のnameがgetAllFoodの結果のnameと同じでないこと', () async {
      expect(deleteResult.last.name, isNot(getAllResult.last.name));
    });

    test('deleteFoodの結果のcreatedAtがgetAllFoodの結果のcreatedAtと同じでないこと', () async {
      expect(deleteResult.last.createdAt, isNot(getAllResult.last.createdAt));
    });
  });
}
