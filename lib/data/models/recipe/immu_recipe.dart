import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'immu_recipe.freezed.dart';

@freezed
class ImmuRecipe with _$ImmuRecipe {
  const factory ImmuRecipe({
    required Id id,
    required String name,
    required String description,
    required List<String> ingredientName,
    required List<String> ingredientQuantity,
    required List<String> stepNumber,
    required List<String> stepDescription,
    required String calorie,
    required String protein,
    required String fat,
    required String carbohydrate,
  }) = _ImmuRecipe;
}