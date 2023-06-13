
import 'package:cooking_completly_understood/data/models/message/nutrition/nutrition.dart';
import 'package:cooking_completly_understood/data/models/message/recipe_ingredients/recipe_ingredients.dart';
import 'package:isar/isar.dart';

part 'recipe.g.dart';

@collection
class Recipe {
  Id? id = Isar.autoIncrement;
  String name = '';
  String description = '';
  List<String> ingredientName = [];
  List<String> ingredientQuantity = [];
  List<String> stepNumber = [];
  List<String> stepDescription = [];
  String calorie = '';
  String protein = '';
  String fat = '';
  String carbohydrate = '';
}