import 'package:freezed_annotation/freezed_annotation.dart';

part 'safety_rating.freezed.dart';
part 'safety_rating.g.dart';

@freezed
abstract class SafetyRating with _$SafetyRating {
  const factory SafetyRating({
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'probability') required String probability,
  }) = _SafetyRating;

  factory SafetyRating.fromJson(Map<String, dynamic> json) =>
      _$SafetyRatingFromJson(json);
}
