//freezed
import 'package:isar/isar.dart';

part 'my_message.g.dart';


@collection
class MyMessage  {
  
  Id id = Isar.autoIncrement;
  late String role;
  late String content;
  late DateTime timeStamp;
}