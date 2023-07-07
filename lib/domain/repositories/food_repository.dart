import 'package:cooking_completly_understood/domain/models/food/food.dart';

abstract class FoodRepository {
  Stream<List<Food>> getAll();
  Future<void> insert(String foodName);
  Future<void> delete(int foodId);
}