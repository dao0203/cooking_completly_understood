import 'package:cooking_completly_understood/data/models/palm_api_response/safety_rating/safety_rating.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidate.freezed.dart';
part 'candidate.g.dart';

@freezed
abstract class Candidate with _$Candidate {
  const factory Candidate({
    @JsonKey(name: 'output') required String output,
    @JsonKey(name: 'safetyRatings') required List<SafetyRating> safetyRatings,
  }) = _Candidate;

  factory Candidate.fromJson(Map<String, dynamic> json) =>
      _$CandidateFromJson(json);
}
