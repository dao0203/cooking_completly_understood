import 'package:cooking_completly_understood/domain/models/food/food.dart';
import 'package:isar/isar.dart';

part 'food_entity.g.dart';

@collection
class FoodEntity {
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
