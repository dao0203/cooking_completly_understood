// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipe _$$_RecipeFromJson(Map<String, dynamic> json) => _$_Recipe(
      name: json['recipe_name'] as String? ?? '',
      description: json['recipe_description'] as String? ?? '',
      ingredients: (json['recipe_ingredients'] as List<dynamic>?)
              ?.map(
                  (e) => RecipeIngredients.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      steps: (json['recipe_steps'] as List<dynamic>?)
              ?.map((e) => RecipeSteps.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      nutrition:
          Nutrition.fromJson(json['recipe_nutrition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RecipeToJson(_$_Recipe instance) => <String, dynamic>{
      'recipe_name': instance.name,
      'recipe_description': instance.description,
      'recipe_ingredients': instance.ingredients,
      'recipe_steps': instance.steps,
      'recipe_nutrition': instance.nutrition,
    };
