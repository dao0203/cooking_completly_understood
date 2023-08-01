import 'package:cooking_completly_understood/data/models/food_model/food_entity.dart';

abstract class FoodDataSource {
  Stream<List<FoodEntity>> getAllFood();
  Future<void> insertFood(FoodEntity food);
  Future<void> deleteFood(int foodId);
}
