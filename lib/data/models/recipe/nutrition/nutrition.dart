//freezed
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition.freezed.dart';
part 'nutrition.g.dart';

@freezed
abstract class Nutrition with _$Nutrition {
  const factory Nutrition({
    @JsonKey(name: 'calorie', defaultValue: '')
    required String calorie, //カロリー
    @JsonKey(name: 'protein', defaultValue: '')
    required String protein, //タンパク質
    @JsonKey(name: 'fat', defaultValue: '')
    required String fat, //脂質
    @JsonKey(name: 'carbohydrate', defaultValue: '')
    required String carbohydrate, //炭水化物
  }) = _Nutrition;

  factory Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);
}