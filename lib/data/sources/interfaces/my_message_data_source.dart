import 'package:recipe_lite/data/models/my_message_entity/my_message_entity.dart';

abstract class MyMessageDataSource {
  Stream<List<MyMessageEntity>> getAll();
  Future<void> insert(String myMessage);
}
