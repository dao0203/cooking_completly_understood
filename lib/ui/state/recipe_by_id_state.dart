import 'package:cooking_completly_understood/data/models/immu_recipe/immu_recipe.dart';
import 'package:cooking_completly_understood/di/recipe_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_by_id_state.g.dart';

@riverpod
class RecipeByIdState extends _$RecipeByIdState {
  @override
  Future<Stream<List<ImmuRecipe>>> build(int id) async {
    return await ref.read(recipeRepositoryProvider).then(
      (value) {
        return value.getRecipeById(id);
      },
    );
  }

  //レシピのお気に入り状態を変更するメソッド
  Future<void> changeFavoriteStatus(ImmuRecipe immuRecipe) async {
    await ref.read(recipeRepositoryProvider).then(
      (value) {
        return value.changeFavoriteStatus(immuRecipe);
      },
    );
  }

  //レシピの料理済み状態を変更するメソッド
  Future<void> changeMadeStatus(ImmuRecipe immuRecipe) async {
    await ref.read(recipeRepositoryProvider).then(
      (value) {
        return value.changeMadeStatus(immuRecipe);
      },
    );
  }
}
