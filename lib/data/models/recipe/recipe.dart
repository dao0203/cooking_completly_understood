import 'package:cooking_completly_understood/data/models/recipe/nutrition/nutrition.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe_ingredients/recipe_ingredients.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe_steps/recipe_steps.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class Recipe with _$Recipe {
  const Recipe._();

  const factory Recipe({
    @JsonKey(name: jsonRecipeName, defaultValue: '') required String name, //レシピ名
    @JsonKey(name: jsonRecipeDescription, defaultValue: '')
    required String description, //レシピの説明
    @JsonKey(name: jsonRecipeIngredients, defaultValue: [])
    required List<RecipeIngredients> ingredients, //材料
    @JsonKey(name: jsonRecipeSteps, defaultValue: [])
    required List<RecipeSteps> steps, //手順
    @JsonKey(name: jsonRecipeNutrition)
    required Nutrition nutrition, //栄養　//これはNNullになる可能性がある
  }) = _Recipe;

  Id get id => Isar.autoIncrement;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
