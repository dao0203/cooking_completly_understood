import 'package:cooking_completly_understood/data/models/recipe_model/recipe_model.dart';
import 'package:cooking_completly_understood/utils/role.dart';

final mockRecipeModelList = [
  RecipeModel()
    ..name = 'test1'
    ..role = Role.assistant.name
    ..description = 'test1'
    ..cookingTime = 'test1'
    ..ingredientName = ['test1']
    ..ingredientQuantity = ['test1']
    ..stepNumber = ['test1']
    ..stepDescription = ['test1']
    ..calorie = 'test1'
    ..protein = 'test1'
    ..fat = 'test1'
    ..carbohydrate = 'test1'
    ..salt = 'test1'
    ..fat = 'test1'
    ..carbohydrate = 'test1'
    ..salt = 'test1'
    ..timeStamp = DateTime.now()
    ..isMade = false
    ..isFavorite = false,
  RecipeModel()
    ..name = 'test2'
    ..role = Role.assistant.name
    ..description = 'test2'
    ..cookingTime = 'test2'
    ..ingredientName = ['test2']
    ..ingredientQuantity = ['test2']
    ..stepNumber = ['test2']
    ..stepDescription = ['test2']
    ..calorie = 'test2'
    ..protein = 'test2'
    ..fat = 'test2'
    ..carbohydrate = 'test2'
    ..salt = 'test2'
    ..timeStamp = DateTime.now()
    ..isMade = false
    ..isFavorite = false,
  RecipeModel()
    ..name = 'test3'
    ..role = Role.assistant.name
    ..description = 'test3'
    ..cookingTime = 'test3'
    ..ingredientName = ['test3']
    ..ingredientQuantity = ['test3']
    ..stepNumber = ['test3']
    ..stepDescription = ['test3']
    ..calorie = 'test3'
    ..protein = 'test3'
    ..fat = 'test3'
    ..carbohydrate = 'test3'
    ..salt = 'test3'
    ..timeStamp = DateTime.now()
    ..isMade = false
    ..isFavorite = false,
];
