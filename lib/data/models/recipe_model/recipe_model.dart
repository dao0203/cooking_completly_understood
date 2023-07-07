import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';
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

  Recipe toRecipe() {
    return Recipe(
      id: id,
      role: role,
      name: name,
      description: description,
      cookingTime: cookingTime,
      ingredientName: ingredientName,
      ingredientQuantity: ingredientQuantity,
      stepNumber: stepNumber,
      stepDescription: stepDescription,
      calorie: calorie,
      protein: protein,
      fat: fat,
      carbohydrate: carbohydrate,
      salt: salt,
      timeStamp: timeStamp,
      isMade: isMade,
      isFavorite: isFavorite,
    );
  }
}
