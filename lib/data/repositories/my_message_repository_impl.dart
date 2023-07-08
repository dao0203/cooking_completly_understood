import 'package:cooking_completly_understood/data/models/my_message_model/my_message_model.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/my_message_data_source.dart';
import 'package:cooking_completly_understood/domain/models/my_message/my_message.dart';
import 'package:cooking_completly_understood/domain/repositories/my_message_repository.dart';

class MyMessageRepositoryImpl implements MyMessageRepository {
  final MyMessageDataSource _myMessageDataSource;
  MyMessageRepositoryImpl(this._myMessageDataSource);

  @override
  Stream<List<MyMessage>> getAll() => _myMessageDataSource
      .getAll()
      .map((event) => event.map((e) => e.toMyMessage()).toList());

  @override
  Future<void> insert(MyMessageModel myMessageModel) =>
      _myMessageDataSource.insert(myMessageModel);
}
