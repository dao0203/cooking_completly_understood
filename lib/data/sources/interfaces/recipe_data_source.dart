import 'package:cooking_completly_understood/data/models/recipe_entity/recipe_entity.dart';
import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';

abstract class RecipeDataSource {
  Stream<List<RecipeEntity>> getAll();
  Stream<RecipeEntity> getById(int id);
  Future<void> insert(Recipe recipe);
  Future<void> changeFavoriteStatus(int id);
  Future<void> changeMadeStatus(int id);
}
