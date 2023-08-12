import 'package:recipe_lite/data/models/open_ai_api_response/choices/choice.dart';
import 'package:recipe_lite/data/models/open_ai_api_response/usage/usage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_ai_api_response.freezed.dart';
part 'open_ai_api_response.g.dart';

@freezed
abstract class OpenAIApiResponse with _$OpenAIApiResponse {
  const factory OpenAIApiResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'object') required String object,
    @JsonKey(name: 'created') required int created,
    @JsonKey(name: 'choices') required List<Choice> choices,
    @JsonKey(name: 'usage') required Usage usage,
  }) = _OpenAIApiResponse;

  factory OpenAIApiResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenAIApiResponseFromJson(json);
}
