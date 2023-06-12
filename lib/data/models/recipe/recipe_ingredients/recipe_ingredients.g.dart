// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_ingredients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeIngredients _$$_RecipeIngredientsFromJson(Map<String, dynamic> json) =>
    _$_RecipeIngredients(
      name: json['ingredient_name'] as String? ?? '',
      quantity: json['ingredient_quantity'] as String? ?? '',
    );

Map<String, dynamic> _$$_RecipeIngredientsToJson(
        _$_RecipeIngredients instance) =>
    <String, dynamic>{
      'ingredient_name': instance.name,
      'ingredient_quantity': instance.quantity,
    };
