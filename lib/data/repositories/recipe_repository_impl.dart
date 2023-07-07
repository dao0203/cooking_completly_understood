import 'package:cooking_completly_understood/data/models/recipe_model/recipe_model.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/recipe_data_source.dart';
import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/domain/repositories/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeDataSource _recipeService;
  RecipeRepositoryImpl(this._recipeService);
  @override
  Future<void> changeFavoriteStatus(RecipeModel recipeModel) =>
      _recipeService.changeFavoriteStatus(recipeModel);

  @override
  Future<void> changeMadeStatus(RecipeModel recipeModel) =>
      _recipeService.changeMadeStatus(recipeModel);

  @override
  Stream<List<Recipe>> getAllRecipes() => _recipeService
      .getAll()
      .map((event) => event.map((e) => e.toRecipe()).toList());

  @override
  Stream<List<Recipe>> getRecipeById(int id) => _recipeService
      .getById(id)
      .map((event) => event.map((e) => e.toRecipe()).toList());

  @override
  Future<void> insert(RecipeModel recipeModel) =>
      _recipeService.insert(recipeModel);
}
