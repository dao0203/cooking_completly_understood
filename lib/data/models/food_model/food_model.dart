import 'package:cooking_completly_understood/domain/models/food/food.dart';
import 'package:isar/isar.dart';

part 'food_model.g.dart';

@collection
class FoodModel {
  Id id = Isar.autoIncrement;
  late String name;
  late DateTime createdAt;

  Food toFood() {
    return Food(
      id: id,
      name: name,
      createdAt: createdAt,
    );
  }
}
