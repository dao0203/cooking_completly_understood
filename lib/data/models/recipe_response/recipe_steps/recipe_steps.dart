import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_steps.freezed.dart';
part 'recipe_steps.g.dart';

@freezed
class RecipeSteps with _$RecipeSteps {
  const factory RecipeSteps({
    @JsonKey(name: jsonStepNumber, defaultValue: '')
    required String number, //手順番号
    @JsonKey(name: jsonStepDescription, defaultValue: '')
    required String description, //手順の説明
  }) = _RecipeSteps;

  factory RecipeSteps.fromJson(Map<String, dynamic> json) =>
      _$RecipeStepsFromJson(json);
}
