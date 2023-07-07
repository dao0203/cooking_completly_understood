import 'package:cooking_completly_understood/di/repository_providers.dart';
import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/utils/transformer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_by_id_state.g.dart';

@riverpod
class RecipeByIdState extends _$RecipeByIdState {
  @override
  Future<Stream<List<Recipe>>> build(int id) async {
    return await ref.read(recipeRepositoryProvider).then(
      (value) {
        return value.getRecipeById(id).transform(recipeToImmuRecipeTransformer);
      },
    );
  }

  //レシピのお気に入り状態を変更するメソッド
  Future<void> changeFavoriteStatus(Recipe immuRecipe) async {
    await ref.read(recipeRepositoryProvider).then(
      (value) {
        return value.changeFavoriteStatus(immuRecipe);
      },
    );
  }

  //レシピの料理済み状態を変更するメソッド
  Future<void> changeMadeStatus(Recipe immuRecipe) async {
    await ref.read(recipeRepositoryProvider).then(
      (value) {
        return value.changeMadeStatus(immuRecipe);
      },
    );
  }
}
