import 'package:cooking_completly_understood/data/models/palm_api_response/candidate/candidate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'palm_api_response.freezed.dart';
part 'palm_api_response.g.dart';

@freezed
abstract class PaLMApiResponse with _$PaLMApiResponse {
  const factory PaLMApiResponse({
    @JsonKey(name: 'candiidates') required List<Candidate> result,
  }) = _PaLMApiResponse;

  factory PaLMApiResponse.fromJson(Map<String, dynamic> json) =>
      _$PaLMApiResponseFromJson(json);
}
