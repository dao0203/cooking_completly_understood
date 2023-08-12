import 'package:recipe_lite/data/models/recipe_entity/recipe_entity.dart';
import 'package:recipe_lite/domain/models/recipe/recipe.dart';

abstract class RecipeDataSource {
  Stream<List<RecipeEntity>> getAll();
  Stream<RecipeEntity> getById(int id);
  Future<void> insert(Recipe recipe);
  Future<void> changeFavoriteStatus(Recipe recipe);
  Future<void> changeMadeStatus(Recipe recipe);
}
