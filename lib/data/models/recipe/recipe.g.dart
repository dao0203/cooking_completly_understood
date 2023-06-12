// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipe _$$_RecipeFromJson(Map<String, dynamic> json) => _$_Recipe(
      name: json['recipe_name'] as String? ?? '',
      description: json['reciipe_description'] as String? ?? '',
      ingredients: (json['recipie_ingredients'] as List<dynamic>?)
              ?.map(
                  (e) => RecipeIngredients.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      steps: (json['recipe_steps'] as List<dynamic>?)
              ?.map((e) => RecipeSteps.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_RecipeToJson(_$_Recipe instance) => <String, dynamic>{
      'recipe_name': instance.name,
      'reciipe_description': instance.description,
      'recipie_ingredients': instance.ingredients,
      'recipe_steps': instance.steps,
    };
