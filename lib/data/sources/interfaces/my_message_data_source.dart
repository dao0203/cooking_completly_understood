import 'package:cooking_completly_understood/data/models/my_message/my_message.dart';

abstract class MyMessageDataSource {
  Stream<List<MyMessage>> getAll();
  Future<void> insert(MyMessage myMessage);
}
