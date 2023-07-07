//freezed
import 'package:isar/isar.dart';

import '../../../domain/models/my_message/my_message.dart';

part 'my_message_model.g.dart';

@collection
class MyMessageModel {
  Id id = Isar.autoIncrement;
  late String role;
  late String content;
  late DateTime timeStamp;

  MyMessage toMyMessage() => MyMessage(
        id: id,
        role: role,
        content: content,
        timeStamp: timeStamp,
      );
}
