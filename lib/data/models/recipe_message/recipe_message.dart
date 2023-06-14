//freezed
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_message.freezed.dart';

@freezed
class RecipeMessage with _$RecipeMessage {
  const factory RecipeMessage({
    @Default(-1)
    required int id,
    @Default('')
    required String role,
    @Default('')
    required String content,
    //timeStamp
    @Default('')
    required DateTime timeStamp,
  }) = _RecipeMessage;
}
