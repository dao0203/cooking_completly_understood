import 'package:cooking_completly_understood/data/models/recipe/nutrition/nutrition.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe_ingredients/recipe_ingredients.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe_steps/recipe_steps.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class Message with _$Recipe {
  const Message._();

  const factory Message({
    @JsonKey(name: jsonRecipeName, defaultValue: '')
    required String recipeName, //レシピ名
    @JsonKey(name: jsonRecipeDescription, defaultValue: '')
    required String recipeDescription, //レシピの説明
    @JsonKey(name: jsonRecipeIngredients, defaultValue: [])
    required List<RecipeIngredients> recipeIngredients, //材料
    @JsonKey(name: jsonRecipeSteps, defaultValue: [])
    required List<RecipeSteps> recipeSteps, //手順
    @JsonKey(name: jsonRecipeNutrition)
    required Nutrition nutrition, //栄養　//これはNNullになる可能性がある
  }) = _Recipe;

  factory Message.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
