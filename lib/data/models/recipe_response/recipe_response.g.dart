// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeResponse _$$_RecipeResponseFromJson(Map<String, dynamic> json) =>
    _$_RecipeResponse(
      recipeName: json['recipe_name'] as String? ?? '',
      recipeDescription: json['recipe_description'] as String? ?? '',
      recipeCookingTime: json['recipe_cooking_time'] as String? ?? '',
      recipeIngredients: (json['recipe_ingredients'] as List<dynamic>?)
              ?.map(
                  (e) => RecipeIngredients.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      recipeSteps: (json['recipe_steps'] as List<dynamic>?)
              ?.map((e) => RecipeSteps.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      nutrition:
          Nutrition.fromJson(json['recipe_nutrition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RecipeResponseToJson(_$_RecipeResponse instance) =>
    <String, dynamic>{
      'recipe_name': instance.recipeName,
      'recipe_description': instance.recipeDescription,
      'recipe_cooking_time': instance.recipeCookingTime,
      'recipe_ingredients': instance.recipeIngredients,
      'recipe_steps': instance.recipeSteps,
      'recipe_nutrition': instance.nutrition,
    };
