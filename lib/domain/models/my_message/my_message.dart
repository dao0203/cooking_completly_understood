import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_message.freezed.dart';

@freezed
abstract class MyMessage with _$MyMessage {
  const factory MyMessage({
    required int id,
    required String content,
    required String role,
    required DateTime timeStamp,
  }) = _MyMessage;
}
