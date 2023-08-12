import 'package:recipe_lite/domain/models/recipe/recipe.dart';

abstract class RecipeRepository {
  Stream<List<Recipe>> getAllRecipes();
  Future<void> insert(Recipe recipe);
  Future<void> changeFavoriteStatus(Recipe recipe);
  Stream<Recipe> getRecipeById(int id);
  Future<void> changeMadeStatus(Recipe recipe);
}
