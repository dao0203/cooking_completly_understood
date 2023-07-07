//freezed
import 'package:isar/isar.dart';

part 'my_message_model.g.dart';

@collection
class MyMessageModel {
  Id id = Isar.autoIncrement;
  late String role;
  late String content;
  late DateTime timeStamp;
}
