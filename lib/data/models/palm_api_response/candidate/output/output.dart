import 'package:freezed_annotation/freezed_annotation.dart';

part 'output.freezed.dart';
part 'output.g.dart';

@freezed
abstract class Output with _$Output {
  const factory Output({
    @JsonKey(name: 'output') required String output,
  }) = _Output;

  factory Output.fromJson(Map<String, dynamic> json) =>
      _$OutputFromJson(json);
}