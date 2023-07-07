import 'package:cooking_completly_understood/data/models/food_model/food_model.dart';

abstract class FoodRepository {
  Stream<List<FoodModel>> getAll();
  Future<void> insert(String foodName);
  Future<void> delete(int foodId);
}
