import 'package:cooking_completly_understood/domain/recipe/recipe.dart';
import 'package:cooking_completly_understood/di/recipe_repository_provider.dart';
import 'package:cooking_completly_understood/utils/transformer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_state.g.dart';

@riverpod
class RecipeState extends _$RecipeState {
  @override
  Future<Stream<List<Recipe>>> build() async {
    return await ref.read(recipeRepositoryProvider).then(
          (value) =>
              value.getAllRecipes().transform(recipeToImmuRecipeTransformer),
        );
  }

  //レシピのお気に入り状態を変更するメソッド
  Future<void> changeFavoriteStaus(Recipe recipe) {
    return ref.read(recipeRepositoryProvider).then(
          (value) => value.changeFavoriteStatus(recipe),
        );
  }

  //レシピの料理済み状態を変更するメソッド
  Future<void> changeMadeStatus(Recipe recipe) {
    return ref.read(recipeRepositoryProvider).then(
          (value) => value.changeMadeStatus(recipe),
        );
  }
}
