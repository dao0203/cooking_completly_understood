
import 'package:freezed_annotation/freezed_annotation.dart';

part 'immu_food.freezed.dart';

@freezed
class ImmuFood with _$ImmuFood {
  const factory ImmuFood({
    required int id,
    required String name,
    required DateTime createdAt,
  }) = _ImmuFood;
}