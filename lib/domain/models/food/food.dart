import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';

@freezed
class Food with _$Food {
  const factory Food({
    required int id,
    required String name,
    required DateTime createdAt,
  }) = _Food;
}
