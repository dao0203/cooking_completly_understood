import 'package:cooking_completly_understood/data/models/food_model/food_model.dart';

abstract class FoodDataSource {
  Stream<List<FoodModel>> getAllFood();
  Future<void> insertFood(FoodModel food);
  Future<void> deleteFood(int foodId);
}
