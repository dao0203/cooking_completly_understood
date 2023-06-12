import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_ingredients.freezed.dart';
part 'recipe_ingredients.g.dart';

@freezed
abstract class RecipeIngredients with _$RecipeIngredients {
  const factory RecipeIngredients({
    @JsonKey(name: 'ingredient_name', defaultValue: '')
    required String name, //材料名
    @JsonKey(name: 'ingredient_quantity', defaultValue: '')
    required String quantity, //材料の量
  }) = _RecipeIngredients;

  factory RecipeIngredients.fromJson(Map<String, dynamic> json) =>
      _$RecipeIngredientsFromJson(json);
}
