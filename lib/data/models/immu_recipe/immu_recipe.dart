import 'package:freezed_annotation/freezed_annotation.dart';

part 'immu_recipe.freezed.dart';

@freezed
class ImmuRecipe with _$ImmuRecipe {
  const factory ImmuRecipe({
    required int id,
    required String name,
    required String description,
    required String cookingTime,
    required List<String> ingredientName,
    required List<String> ingredientQuantity,
    required List<String> stepNumber,
    required List<String> stepDescription,
    required String calorie,
    required String protein,
    required String fat,
    required String carbohydrate,
    required String salt,
    required DateTime timeStamp,
    required bool isMade,
    required bool isFavorite,
  }) = _ImmuRecipe;
}
