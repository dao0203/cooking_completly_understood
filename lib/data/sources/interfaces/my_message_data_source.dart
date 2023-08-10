import 'package:cooking_completly_understood/data/models/my_message_entity/my_message_entity.dart';

abstract class MyMessageDataSource {
  Stream<List<MyMessageEntity>> getAll();
  Future<void> insert(String myMessage);
}
