import 'package:cooking_completly_understood/data/models/food_model/food_entity.dart';

//getAllのテストデータ
final List<FoodEntity> mockFoodModelList = [
  FoodEntity()
    ..name = 'test1'
    ..createdAt = DateTime.now(),
  FoodEntity()
    ..name = 'test2'
    ..createdAt = DateTime.now(),
  FoodEntity()
    ..name = 'test3'
    ..createdAt = DateTime.now(),
];

//FoodModelのinsert用のテストデータ
final FoodEntity mockFoodModelForInsertion = FoodEntity()
  ..name = 'test4'
  ..createdAt = DateTime.now();
