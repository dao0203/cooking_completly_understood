import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_steps.freezed.dart';
part 'recipe_steps.g.dart';

@freezed
abstract class RecipeSteps with _$RecipeSteps {
  const factory RecipeSteps({
    @JsonKey(name: 'step_number', defaultValue: '')
    required String number, //手順番号
    @JsonKey(name: 'step_description', defaultValue: '')
    required String description, //手順の説明
  }) = _RecipeSteps;

  factory RecipeSteps.fromJson(Map<String, dynamic> json) =>
      _$RecipeStepsFromJson(json);
}
