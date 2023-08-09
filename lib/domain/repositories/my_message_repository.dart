import 'package:cooking_completly_understood/domain/models/my_message/my_message.dart';

abstract class MyMessageRepository {
  Stream<List<MyMessage>> getAll();
  Future<void> insert(String myMessage);
}
