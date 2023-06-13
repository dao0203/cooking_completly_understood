import 'package:freezed_annotation/freezed_annotation.dart';

part 'immu_recipe.freezed.dart';

@freezed
class ImmuRecipe with _$ImmuRecipe {
  const factory ImmuRecipe({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String cookingTime,
    @Default([]) List<String> ingredientName,
    @Default([]) List<String> ingredientQuantity,
    @Default([]) List<String> stepNumber,
    @Default([]) List<String> stepDescription,
    @Default('') String calorie,
    @Default('') String protein,
    @Default('') String fat,
    @Default('') String carbohydrate,
    @Default('') String vitamin,
    @Default('') String mineral,
  }) = _ImmuRecipe;
}
