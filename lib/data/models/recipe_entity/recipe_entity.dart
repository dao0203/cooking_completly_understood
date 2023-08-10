//freezed
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_entity.freezed.dart';

@freezed
abstract class RecipeEntity with _$RecipeEntity {
  const factory RecipeEntity({
    required int id,
    required String name,
    required String description,
    required String cookingTimeMinutes,
    required List<String> ingredientNames,
    required List<String> ingredientQuantities,
    required List<String> stepNumbers,
    required List<String> stepDescriptions,
    required double calorie,
    required double protein,
    required double fat,
    required double carbohydrate,
    required double salt,
    required DateTime createdAt,
    required bool isMade,
    required bool isFavorite,
  }) = _RecipeEntity;
}
