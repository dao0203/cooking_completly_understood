
import 'package:cooking_completly_understood/data/models/food_model/food_model.dart';
import 'package:cooking_completly_understood/data/sources/local/isar_food_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';

import '../../mocks/mock_food_model_list.dart';
import '../../utils/isar_db_directory.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  late Isar isar;
  late IsarFoodDataSource isarFoodDataSource;
  late List<FoodModel> getAllResult;
  late List<FoodModel> insertResult;
  final IsarDbDirectory isarDbDirectory = IsarDbDirectory();

  setUpAll(()async{
    await Isar.initializeIsarCore(download: true);
    await isarDbDirectory.create();

    isar = await Isar.open([FoodModelSchema], directory: isarDbDirectory.path);

    isarFoodDataSource = IsarFoodDataSource(isar);

    for(final foodModel in mockFoodModelList){
      await isarFoodDataSource.insertFood(foodModel);
    }

    getAllResult = await isarFoodDataSource.getAllFood().first;

  });

  tearDownAll(()async{
    await isar.close();
    await isarDbDirectory.delete();
  });

  group('getAllFood', (){
    test('getAllFoodの結果の長さがmockFoodModelListの長さと同じであること', (){
      expect(getAllResult.length, mockFoodModelList.length);
    });

    test('getAllFoodの結果のnameがmockFoodModelListのnameと同じであること', (){
      for(int i = 0; i < getAllResult.length; i++){
        expect(getAllResult[i].name, mockFoodModelList[i].name);
      }
    });

    test('getAllFoodの結果のcreatedAtがmockFoodModelListのcreatedAtと同じであること', (){
      for(int i = 0; i < getAllResult.length; i++){
        expect(getAllResult[i].createdAt, mockFoodModelList[i].createdAt);
      }
    });
  });

  group('insertFood', (){
    test('insertFoodの結果の長さがgetAllFoodの結果の長さより1大きいこと', ()async{
      final foodModel = FoodModel()
        ..name = 'test4'
        ..createdAt = DateTime.now();
      await isarFoodDataSource.insertFood(foodModel);
      insertResult = await isarFoodDataSource.getAllFood().first;
      expect(insertResult.length, getAllResult.length + 1);
    });

    test('insertFoodの結果のnameがgetAllFoodの結果のnameと同じであること', ()async{
      final foodModel = FoodModel()
        ..name = 'test4'
        ..createdAt = DateTime.now();
      await isarFoodDataSource.insertFood(foodModel);
      insertResult = await isarFoodDataSource.getAllFood().first;
      expect(insertResult.last.name, foodModel.name);
    });

    test('insertFoodの結果のcreatedAtがgetAllFoodの結果のcreatedAtと同じであること', ()async{
      final foodModel = FoodModel()
        ..name = 'test4'
        ..createdAt = DateTime.now();
      await isarFoodDataSource.insertFood(foodModel);
      insertResult = await isarFoodDataSource.getAllFood().first;
      expect(insertResult.last.createdAt, foodModel.createdAt);
    });
  });

  group('deleteFood', (){
    test('deleteFoodの結果の長さがgetAllFoodの結果の長さより1小さいこと', ()async{
      await isarFoodDataSource.deleteFood(getAllResult.last.id);
      final deleteResult = await isarFoodDataSource.getAllFood().first;
      expect(deleteResult.length, getAllResult.length - 1);
    });

    test('deleteFoodの結果のnameがgetAllFoodの結果のnameと同じでないこと', ()async{
      await isarFoodDataSource.deleteFood(getAllResult.last.id);
      final deleteResult = await isarFoodDataSource.getAllFood().first;
      expect(deleteResult.last.name, isNot(getAllResult.last.name));
    });

    test('deleteFoodの結果のcreatedAtがgetAllFoodの結果のcreatedAtと同じでないこと', ()async{
      await isarFoodDataSource.deleteFood(getAllResult.last.id);
      final deleteResult = await isarFoodDataSource.getAllFood().first;
      expect(deleteResult.last.createdAt, isNot(getAllResult.last.createdAt));
    });
  });
}