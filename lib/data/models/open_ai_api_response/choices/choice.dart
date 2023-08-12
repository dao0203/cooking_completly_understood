import 'package:recipe_lite/data/models/open_ai_api_response/choices/message/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice.freezed.dart';
part 'choice.g.dart';

@freezed
abstract class Choice with _$Choice {
  const factory Choice({
    @JsonKey(name: 'index') required int index,
    @JsonKey(name: 'message') required Message message,
    @JsonKey(name: 'finish_reason') required String finishReason,
  }) = _Choice;

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
}
