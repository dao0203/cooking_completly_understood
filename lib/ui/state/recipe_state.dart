import 'package:recipe_lite/di/repository_providers.dart';
import 'package:recipe_lite/domain/models/recipe/recipe.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_state.g.dart';

@riverpod
class RecipeState extends _$RecipeState {
  @override
  Stream<List<Recipe>> build() {
    return ref.watch(recipeRepositoryProvider).getAllRecipes();
  }

  //レシピのお気に入り状態を変更するメソッド
  Future<void> changeFavoriteStaus(Recipe recipe) async {
    return await ref
        .watch(recipeRepositoryProvider)
        .changeFavoriteStatus(recipe);
  }

  //レシピの料理済み状態を変更するメソッド
  Future<void> changeMadeStatus(Recipe recipe) {
    return ref.watch(recipeRepositoryProvider).changeMadeStatus(recipe);
  }
}
