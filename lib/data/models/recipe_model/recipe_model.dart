import 'package:isar/isar.dart';

part 'recipe_model.g.dart';

@collection
class RecipeModel {
  Id id = Isar.autoIncrement;
  late String role;
  late String name;
  late String description;
  late String cookingTime;
  late List<String> ingredientName;
  late List<String> ingredientQuantity;
  late List<String> stepNumber;
  late List<String> stepDescription;
  late String calorie;
  late String protein;
  late String fat;
  late String carbohydrate;
  late String salt;
  DateTime timeStamp = DateTime.now();
  bool isMade = false;
  bool isFavorite = false;
}