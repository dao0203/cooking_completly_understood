import 'package:cooking_completly_understood/data/sources/interfaces/recipe_data_source.dart';
import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/domain/repositories/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeDataSource _recipeService;
  RecipeRepositoryImpl(this._recipeService);
  @override
  Future<void> changeFavoriteStatus(Recipe recipe) =>
      _recipeService.changeFavoriteStatus(recipe.id);

  @override
  Future<void> changeMadeStatus(Recipe recipe) =>
      _recipeService.changeMadeStatus(recipe.id);

  @override
  Stream<List<Recipe>> getAllRecipes() =>
      _recipeService.getAll().map((event) => event
          .map((e) => Recipe(
              id: e.id,
              name: e.name,
              description: e.description,
              cookingTimeMinutes: e.cookingTimeMinutes,
              ingredientName: e.ingredientName,
              ingredientQuantity: e.ingredientQuantity,
              stepNumber: e.stepNumber,
              stepDescription: e.stepDescription,
              calorie: e.calorie,
              protein: e.protein,
              fat: e.fat,
              carbohydrate: e.carbohydrate,
              salt: e.salt,
              createdAt: e.createdAt,
              isMade: e.isMade,
              isFavorite: e.isFavorite))
          .toList());

  @override
  Stream<Recipe> getRecipeById(int id) =>
      _recipeService.getById(id).map((event) => Recipe(
            id: event.id,
            name: event.name,
            description: event.description,
            cookingTimeMinutes: event.cookingTimeMinutes,
            ingredientName: event.ingredientName,
            ingredientQuantity: event.ingredientQuantity,
            stepNumber: event.stepNumber,
            stepDescription: event.stepDescription,
            calorie: event.calorie,
            protein: event.protein,
            fat: event.fat,
            carbohydrate: event.carbohydrate,
            salt: event.salt,
            createdAt: event.createdAt,
            isMade: event.isMade,
            isFavorite: event.isFavorite,
          ));

  @override
  Future<void> insert(Recipe recipe) => _recipeService.insert(recipe);
}
