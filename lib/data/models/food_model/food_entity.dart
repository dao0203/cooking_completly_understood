import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_entity.freezed.dart';

@freezed
class FoodEntity with _$FoodEntity {
  const factory FoodEntity({
    required int id,
    required String foodName,
    required int count,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _FoodEntity;
}
