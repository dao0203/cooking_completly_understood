// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_steps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeSteps _$$_RecipeStepsFromJson(Map<String, dynamic> json) =>
    _$_RecipeSteps(
      number: json['step_number'] as String? ?? '',
      description: json['step_description'] as String? ?? '',
    );

Map<String, dynamic> _$$_RecipeStepsToJson(_$_RecipeSteps instance) =>
    <String, dynamic>{
      'step_number': instance.number,
      'step_description': instance.description,
    };
