import 'package:recipe_lite/data/models/palm_api_response/candidate/candidate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'palm_api_response.freezed.dart';
part 'palm_api_response.g.dart';

@freezed
abstract class PaLMApiResponse with _$PaLMApiResponse {
  const factory PaLMApiResponse({
    @JsonKey(name: 'candidates') required List<Candidate> candidates,
  }) = _PaLMApiResponse;

  factory PaLMApiResponse.fromJson(Map<String, dynamic> json) =>
      _$PaLMApiResponseFromJson(json);
}
