import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required int id,
    required String name,
    required String description,
    required String cookingTimeMinutes,
    required List<String> ingredientName,
    required List<String> ingredientQuantity,
    required List<String> stepNumber,
    required List<String> stepDescription,
    required double calorie,
    required double protein,
    required double fat,
    required double carbohydrate,
    required double salt,
    required DateTime createdAt,
    required bool isMade,
    required bool isFavorite,
  }) = _Recipe;
}
