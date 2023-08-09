import 'package:cooking_completly_understood/data/models/food_entity/food_entity.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/food_data_source.dart';
import 'package:cooking_completly_understood/domain/models/food/food.dart';
import 'package:cooking_completly_understood/domain/repositories/food_repository.dart';

class FoodRepositoryImpl implements FoodRepository {
  final FoodDataSource _foodDataSource;
  FoodRepositoryImpl(this._foodDataSource);

  //食べ物を全て取得するメソッド
  @override
  Stream<List<Food>> getAll() {
    return _foodDataSource.getAllFood().map((event) => event
        .map((e) => Food(
              id: e.id,
              name: e.foodName,
              createdAt: e.createdAt,
            ))
        .toList());
  }

  //食べ物を保存するメソッド
  @override
  Future<void> insert(String foodName) async {
    await _foodDataSource.insertFood(foodName);
  }

  //食べ物を削除するメソッド
  @override
  Future<void> delete(int foodId) async {
    await _foodDataSource.deleteFood(foodId);
  }
}
