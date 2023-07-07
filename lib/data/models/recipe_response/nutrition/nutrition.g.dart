// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Nutrition _$$_NutritionFromJson(Map<String, dynamic> json) => _$_Nutrition(
      calorie: json['calorie'] as String? ?? '',
      protein: json['protein'] as String? ?? '',
      fat: json['fat'] as String? ?? '',
      carbohydrate: json['carbohydrate'] as String? ?? '',
      salt: json['salt'] as String? ?? '',
    );

Map<String, dynamic> _$$_NutritionToJson(_$_Nutrition instance) =>
    <String, dynamic>{
      'calorie': instance.calorie,
      'protein': instance.protein,
      'fat': instance.fat,
      'carbohydrate': instance.carbohydrate,
      'salt': instance.salt,
    };
