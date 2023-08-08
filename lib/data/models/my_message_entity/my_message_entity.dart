// freezed
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_message_entity.freezed.dart';

@freezed
abstract class MyMessageEntity with _$MyMessageEntity {
  const factory MyMessageEntity({
    required int id,
    required String content,
    required DateTime createdAt,
  }) = _MyMessageEntity;
}
