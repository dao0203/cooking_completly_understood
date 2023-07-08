import 'package:cooking_completly_understood/data/models/my_message_model/my_message_model.dart';
import 'package:cooking_completly_understood/domain/models/my_message/my_message.dart';

abstract class MyMessageRepository {
  Stream<List<MyMessage>> getAll();
  Future<void> insert(MyMessageModel myMessageModel);
}
