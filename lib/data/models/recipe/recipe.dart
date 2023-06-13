import 'package:isar/isar.dart';

part 'recipe.g.dart';

@collection
class Recipe {
  Id id = Isar.autoIncrement;
  String name = '';
  String description = '';
  String cookingTime = '';
  List<String> ingredientName = [];
  List<String> ingredientQuantity = [];
  List<String> stepNumber = [];
  List<String> stepDescription = [];
  String calorie = '';
  String protein = '';
  String fat = '';
  String carbohydrate = '';
  String salt = '';
}
