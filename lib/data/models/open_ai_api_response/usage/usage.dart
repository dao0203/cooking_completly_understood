import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage.freezed.dart';
part 'usage.g.dart';

@freezed
abstract class Usage with _$Usage {
  const factory Usage({
    @JsonKey(name: 'prompt_tokens') required int promptTokens,
    @JsonKey(name: 'completion_tokens') required int completionTokens,
    @JsonKey(name: 'total_tokens') required int totalTokens,
  }) = _Usage;

  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);
}
