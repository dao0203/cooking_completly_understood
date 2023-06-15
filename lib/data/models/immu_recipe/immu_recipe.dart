import 'package:freezed_annotation/freezed_annotation.dart';

part 'immu_recipe.freezed.dart';

@freezed
class ImmuRecipe with _$ImmuRecipe {
  const factory ImmuRecipe({
    @Default(0) required int id,
    @Default('') required name,
    @Default('') required String description,
    @Default('') required String cookingTime,
    @Default([]) required List<String> ingredientName,
    @Default([]) required List<String> ingredientQuantity,
    @Default([]) required List<String> stepNumber,
    @Default([]) required List<String> stepDescription,
    @Default('') required String calorie,
    @Default('') required String protein,
    @Default('') required String fat,
    @Default('') required String carbohydrate,
    @Default('') required String salt,
    @Default('') required DateTime timeStamp,
    @Default(false) required bool isMade,
    @Default(false) required bool isFavorite,
  }) = _ImmuRecipe;
}
