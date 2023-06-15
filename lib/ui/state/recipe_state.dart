import 'package:cooking_completly_understood/data/models/immu_recipe/immu_recipe.dart';
import 'package:cooking_completly_understood/di/recipe_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_state.g.dart';

@riverpod
class RecipeState extends _$RecipeState {
  @override
  Future<Stream<List<ImmuRecipe>>> build() {
    return ref.read(recipeRepositoryProvider).then(
          (value) => value.getAllRecipes(),
        );
  }

  //レシピのお気に入り状態を変更するメソッド
  Future<void> changeFavoriteStaus(ImmuRecipe recipe) {
    return ref.read(recipeRepositoryProvider).then(
          (value) => value.changeFavoriteStatus(recipe),
        );
  }

  //レシピの料理済み状態を変更するメソッド
  Future<void> changeMadeStatus(ImmuRecipe recipe) {
    return ref.read(recipeRepositoryProvider).then(
          (value) => value.changeMadeStatus(recipe),
        );
  }
}
