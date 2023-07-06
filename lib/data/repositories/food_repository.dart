import 'package:cooking_completly_understood/data/models/food/food.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/food_data_source.dart';

class FoodRepository {
  final FoodDataSource _foodService;
  FoodRepository(this._foodService);

  //食べ物を全て取得するメソッド
  Stream<List<Food>> getAllFood() {
    return _foodService.getAllFood();
  }

  //食べ物を保存するメソッド
  Future<void> insertFood(String foodName) async {
    final food = Food()
      ..name = foodName
      ..createdAt = DateTime.now();
    await _foodService.insertFood(food);
  }

  //食べ物を削除するメソッド
  Future<void> deleteFood(int foodId) async {
    await _foodService.deleteFood(foodId);
  }
}
