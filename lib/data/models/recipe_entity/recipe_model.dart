import 'package:cooking_completly_understood/data/models/recipe_response/recipe_response.dart';
import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/utils/role.dart';
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

  RecipeModel fromRecipeResponseToInsert(RecipeResponse recipeResponse) {
    return RecipeModel()
      ..name = recipeResponse.recipeName
      ..role = Role.assistant.name
      ..description = recipeResponse.recipeDescription
      ..cookingTime = recipeResponse.recipeCookingTime
      ..ingredientName =
          recipeResponse.recipeIngredients.map((e) => e.name).toList()
      ..ingredientQuantity =
          recipeResponse.recipeIngredients.map((e) => e.quantity).toList()
      ..stepNumber = recipeResponse.recipeSteps.map((e) => e.number).toList()
      ..stepDescription =
          recipeResponse.recipeSteps.map((e) => e.description).toList()
      ..calorie = recipeResponse.nutrition.calorie
      ..protein = recipeResponse.nutrition.protein
      ..fat = recipeResponse.nutrition.fat
      ..carbohydrate = recipeResponse.nutrition.carbohydrate
      ..salt = recipeResponse.nutrition.salt
      ..timeStamp = DateTime.now()
      ..isMade = false
      ..isFavorite = false;
  }
}
