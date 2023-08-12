import 'package:recipe_lite/di/repository_providers.dart';
import 'package:recipe_lite/domain/models/recipe/recipe.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_by_id_state.g.dart';

@riverpod
class RecipeByIdState extends _$RecipeByIdState {
  @override
  Stream<Recipe> build(int id) {
    return ref.watch(recipeRepositoryProvider).getRecipeById(id);
  }

  //レシピのお気に入り状態を変更するメソッド
  Future<void> changeFavoriteStatus(Recipe recipe) async {
    await ref.watch(recipeRepositoryProvider).changeFavoriteStatus(recipe);
  }

  //レシピの料理済み状態を変更するメソッド
  Future<void> changeMadeStatus(Recipe recipe) async {
    await ref.watch(recipeRepositoryProvider).changeMadeStatus(recipe);
  }
}
