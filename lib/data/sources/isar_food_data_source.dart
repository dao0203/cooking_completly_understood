import 'package:cooking_completly_understood/data/models/food_model/food_model.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/food_data_source.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

class IsarFoodDataSource implements FoodDataSource {
  final Isar _isar;
  IsarFoodDataSource(this._isar);

  Query<FoodModel> get _foodGetAllQuery =>
      _isar.foodModels.where(sort: Sort.asc).build();

  //食べ物を全て取得するメソッド
  @override
  Stream<List<FoodModel>> getAllFood() {
    return _foodGetAllQuery.watch(fireImmediately: true);
  }

  //食べ物を保存するメソッド
  @override
  Future<void> insertFood(FoodModel food) async {
    await _isar.writeTxn(
      () async {
        await _isar.foodModels
            .put(food)
            .then((value) => debugPrint("食べ物を保存しました"));
      },
    );
  }

  //食べ物を削除するメソッド
  @override
  Future<void> deleteFood(int foodId) async {
    await _isar.writeTxn(
      () async {
        await _isar.foodModels
            .delete(foodId)
            .then((value) => debugPrint("食べ物を削除しました"));
      },
    );
  }
}
