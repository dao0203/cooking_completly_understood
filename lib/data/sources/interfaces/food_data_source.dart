import 'package:cooking_completly_understood/data/models/food/food.dart';

abstract class FoodDataSource {
  Stream<List<Food>> getAllFood();
  Future<void> insertFood(Food food);
  Future<void> deleteFood(int foodId);
}
