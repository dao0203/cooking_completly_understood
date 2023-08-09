import 'package:cooking_completly_understood/data/models/recipe_entity/recipe_model.dart';

abstract class RecipeDataSource {
  Stream<List<RecipeModel>> getAll();
  Stream<List<RecipeModel>> getById(int id);
  Future<void> insert(RecipeModel recipe);
  Future<void> changeFavoriteStatus(RecipeModel recipe);
  Future<void> changeMadeStatus(RecipeModel recipe);
}
