import 'package:cooking_completly_understood/data/models/my_message_model/my_message_model.dart';

abstract class MyMessageDataSource {
  Stream<List<MyMessageModel>> getAll();
  Future<void> insert(MyMessageModel myMessage);
}
