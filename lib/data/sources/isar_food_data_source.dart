import 'package:cooking_completly_understood/data/models/food/food.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/food_data_source.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

class IsarFoodDataSource implements FoodDataSource {
  final Isar _isar;
  IsarFoodDataSource(this._isar);

  Query<Food> get _foodGetAllQuery => _isar.foods.where(sort: Sort.asc).build();

  //食べ物を全て取得するメソッド
  @override
  Stream<List<Food>> getAllFood() {
    return _foodGetAllQuery.watch(fireImmediately: true);
  }

  //食べ物を保存するメソッド
  @override
  Future<void> insertFood(Food food) async {
    await _isar.writeTxn(
      () async {
        await _isar.foods.put(food).then((value) => debugPrint("食べ物を保存しました"));
      },
    );
  }

  //食べ物を削除するメソッド
  @override
  Future<void> deleteFood(int foodId) async {
    await _isar.writeTxn(
      () async {
        await _isar.foods
            .delete(foodId)
            .then((value) => debugPrint("食べ物を削除しました"));
      },
    );
  }
}
