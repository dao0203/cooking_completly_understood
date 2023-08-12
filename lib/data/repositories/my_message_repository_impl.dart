import 'package:recipe_lite/data/sources/interfaces/my_message_data_source.dart';
import 'package:recipe_lite/domain/models/my_message/my_message.dart';
import 'package:recipe_lite/domain/repositories/my_message_repository.dart';

class MyMessageRepositoryImpl implements MyMessageRepository {
  final MyMessageDataSource _myMessageDataSource;
  MyMessageRepositoryImpl(this._myMessageDataSource);

  @override
  Stream<List<MyMessage>> getAll() =>
      _myMessageDataSource.getAll().map((event) => event
          .map((e) => MyMessage(
                id: e.id,
                content: e.content,
                createdAt: e.createdAt,
              ))
          .toList());

  @override
  Future<void> insert(String myMessage) =>
      _myMessageDataSource.insert(myMessage);
}
