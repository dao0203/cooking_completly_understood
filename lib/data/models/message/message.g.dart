// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipe _$$_RecipeFromJson(Map<String, dynamic> json) => _$_Recipe(
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

Map<String, dynamic> _$$_RecipeToJson(_$_Recipe instance) => <String, dynamic>{
      'recipe_name': instance.recipeName,
      'recipe_description': instance.recipeDescription,
      'recipe_cooking_time': instance.recipeCookingTime,
      'recipe_ingredients': instance.recipeIngredients,
      'recipe_steps': instance.recipeSteps,
      'recipe_nutrition': instance.nutrition,
    };
