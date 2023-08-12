import 'package:recipe_lite/data/models/food_entity/food_entity.dart';

abstract class FoodDataSource {
  Stream<List<FoodEntity>> getAllFood();
  Future<void> insertFood(String foodName);
  Future<void> deleteFood(int foodId);
}
