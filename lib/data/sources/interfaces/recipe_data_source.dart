import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';

abstract class RecipeDataSource {
  Stream<List<Recipe>> getAll();
  Stream<List<Recipe>> getById(int id);
  Future<void> insert(Recipe recipe);
  Future<void> changeFavoriteStatus(Recipe recipe);
  Future<void> changeMadeStatus(Recipe recipe);
}
