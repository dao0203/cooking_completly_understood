import 'package:cooking_completly_understood/data/models/recipe_response/nutrition/nutrition.dart';
import 'package:cooking_completly_understood/data/models/recipe_response/recipe_ingredients/recipe_ingredients.dart';
import 'package:cooking_completly_understood/data/models/recipe_response/recipe_steps/recipe_steps.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_response.freezed.dart';
part 'recipe_response.g.dart';

@freezed
class RecipeResponse with _$RecipeResponse {
  const RecipeResponse._();

  const factory RecipeResponse({
    @JsonKey(name: jsonRecipeName, defaultValue: '')
    required String recipeName, //レシピ名
    @JsonKey(name: jsonRecipeDescription, defaultValue: '')
    required String recipeDescription, //レシピの説明
    @JsonKey(name: jsonRecipeCookingTime, defaultValue: '')
    required String recipeCookingTime, //調理時間
    @JsonKey(name: jsonRecipeIngredients, defaultValue: [])
    required List<RecipeIngredients> recipeIngredients, //材料
    @JsonKey(name: jsonRecipeSteps, defaultValue: [])
    required List<RecipeSteps> recipeSteps, //手順
    @JsonKey(name: jsonRecipeNutrition)
    required Nutrition nutrition, //栄養　//これはNNullになる可能性がある
  }) = _RecipeResponse;

  factory RecipeResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeResponseFromJson(json);
}
