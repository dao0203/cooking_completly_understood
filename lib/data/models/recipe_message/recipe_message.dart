//freezed
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_message.freezed.dart';

@freezed
class RecipeMessage with _$RecipeMessage {
  const factory RecipeMessage({
    required int id,
    required String role,
    required String content,
    required DateTime timeStamp,
  }) = _RecipeMessage;
}
