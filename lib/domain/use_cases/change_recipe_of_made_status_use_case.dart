import 'package:cooking_completly_understood/data/models/recipe_model/recipe_model.dart';
import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/domain/repositories/recipe_repository.dart';
import 'package:cooking_completly_understood/domain/use_cases/use_case.dart';

class ChangeRecipeOfMadeStatusUseCase implements UseCase<Recipe, Future<void>> {
  final RecipeRepository _recipeRepository;
  ChangeRecipeOfMadeStatusUseCase(this._recipeRepository);
  @override
  Future<void> call(Recipe recipe) async {
    //代入するRecipeModelを作成
    final recipeModel = RecipeModel()
      ..id = recipe.id
      ..name = recipe.name
      ..role = recipe.role
      ..description = recipe.description
      ..cookingTime = recipe.cookingTime
      ..ingredientName = recipe.ingredientName
      ..ingredientQuantity = recipe.ingredientQuantity
      ..stepNumber = recipe.stepNumber
      ..stepDescription = recipe.stepDescription
      ..calorie = recipe.calorie
      ..protein = recipe.protein
      ..fat = recipe.fat
      ..carbohydrate = recipe.carbohydrate
      ..salt = recipe.salt
      ..timeStamp = recipe.timeStamp
      ..isMade = !recipe.isMade
      ..isFavorite = recipe.isFavorite;

    //レシピの料理済み状態を変更する
    await _recipeRepository.changeMadeStatus(recipeModel);
  }
}
