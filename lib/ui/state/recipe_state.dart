import 'package:cooking_completly_understood/data/models/immu_recipe/immu_recipe.dart';
import 'package:cooking_completly_understood/di/recipe_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_state.g.dart';

@riverpod
class RecipeState extends _$RecipeState {
  @override
  Future<Stream<List<ImmuRecipe>>> build() async {
    return await ref.read(recipeRepositoryProvider).then(
          (value) => value.getAllRecipes().map(
                (event) => event
                    .map(
                      //ImmuRecipeに変換
                      (e) => ImmuRecipe(
                        id: e.id,
                        role: e.role,
                        name: e.name,
                        description: e.description,
                        cookingTime: e.cookingTime,
                        ingredientName: e.ingredientName,
                        ingredientQuantity: e.ingredientQuantity,
                        stepNumber: e.stepNumber,
                        stepDescription: e.stepDescription,
                        calorie: e.calorie,
                        protein: e.protein,
                        fat: e.fat,
                        carbohydrate: e.carbohydrate,
                        salt: e.salt,
                        timeStamp: e.timeStamp,
                        isMade: e.isMade,
                        isFavorite: e.isFavorite,
                      ),
                    )
                    .toList(),
              ),
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
