import 'package:cooking_completly_understood/data/models/my_message/my_message.dart';
import 'package:cooking_completly_understood/data/sources/my_message_data_source.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

class IsarMyMessageDataSource implements MyMessageDataSource {
  final Isar _isar;
  IsarMyMessageDataSource(this._isar);

  Query<MyMessage> get _myMessageGetAllQuery =>
      _isar.myMessages.where(sort: Sort.asc).build();

  //自分のメッセージを保存するメソッド
  @override
  Future<void> insert(MyMessage myMessage) async {
    await _isar.writeTxn(
      () async {
        await _isar.myMessages
            .put(myMessage)
            .then((value) => debugPrint("自分のメッセージを保存しました"));
      },
    );
  }

  //自分のメッセージを全て取得するメソッド
  @override
  Stream<List<MyMessage>> getAll() {
    return _myMessageGetAllQuery.watch(fireImmediately: true);
  }
}
