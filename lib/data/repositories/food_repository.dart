import 'package:cooking_completly_understood/data/models/food/food.dart';
import 'package:cooking_completly_understood/data/sources/food_service.dart';

class FoodRepository {
  final FoodService _foodService;
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
