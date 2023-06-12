import 'package:cooking_completly_understood/data/models/recipe/nutrition/nutrition.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe_ingredients/recipe_ingredients.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe_steps/recipe_steps.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
abstract class Recipe with _$Recipe {
  const factory Recipe({
    @JsonKey(name: 'recipe_name', defaultValue: '') required String name, //レシピ名
    @JsonKey(name: 'reciipe_description', defaultValue: '')
    required String description, //レシピの説明
    @JsonKey(name: 'recipie_ingredients', defaultValue: [])
    required List<RecipeIngredients> ingredients, //材料
    @JsonKey(name: 'recipe_steps', defaultValue: [])
    required List<RecipeSteps> steps, //手順　
    @JsonKey(name: 'recipe_nutrition') required Nutrition nutrition, //栄養　//これはNNullになる可能性がある
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
