import 'package:cooking_completly_understood/data/models/food_model/food_model.dart';

//getAllのテストデータ
final List<FoodModel> mockFoodModelList = [
  FoodModel()
    ..name = 'test1'
    ..createdAt = DateTime.now(),
  FoodModel()
    ..name = 'test2'
    ..createdAt = DateTime.now(),
  FoodModel()
    ..name = 'test3'
    ..createdAt = DateTime.now(),
];

//FoodModelのinsert用のテストデータ
final FoodModel mockFoodModelForInsertion = FoodModel()
  ..name = 'test4'
  ..createdAt = DateTime.now();
