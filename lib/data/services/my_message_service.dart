
import 'package:cooking_completly_understood/data/models/my_message/my_message.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

class MyMessageService {
  final Isar _isar;
  MyMessageService(this._isar);

  Query<MyMessage> get _myMessageGetAllQuery => _isar.myMessages.where(sort: Sort.asc).build();

  //自分のメッセージを保存するメソッド
  Future<void> insertMyMessage(MyMessage myMessage) async {
    await _isar.writeTxn(
      () async {
        await _isar.myMessages.put(myMessage).then((value) => debugPrint("自分のメッセージを保存しました"));
      },
    );
  }

  //自分のメッセージを全て取得するメソッド
  Stream<List<MyMessage>> getAllMyMessages() {
    return _myMessageGetAllQuery.watch(fireImmediately: true);
  }
  
}