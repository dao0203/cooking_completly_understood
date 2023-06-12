import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_ingredients.freezed.dart';
part 'recipe_ingredients.g.dart';

@freezed
abstract class RecipeIngredients with _$RecipeIngredients {
  const factory RecipeIngredients({
    @JsonKey(name: jsonIngredientName, defaultValue: '')
    required String name, //材料名
    @JsonKey(name: jsoningredientQuantity, defaultValue: '')
    required String quantity, //材料の量
  }) = _RecipeIngredients;

  factory RecipeIngredients.fromJson(Map<String, dynamic> json) =>
      _$RecipeIngredientsFromJson(json);
}
