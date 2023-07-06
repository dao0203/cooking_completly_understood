import 'package:isar/isar.dart';

part 'food_model.g.dart';

@collection
class FoodModel {
  Id id = Isar.autoIncrement;
  late String name;
  late DateTime createdAt;
}
