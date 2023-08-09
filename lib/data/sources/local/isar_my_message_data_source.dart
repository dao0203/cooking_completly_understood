// import 'package:cooking_completly_understood/data/models/my_message_model/my_message_model.dart';
// import 'package:cooking_completly_understood/data/sources/interfaces/my_message_data_source.dart';
// import 'package:flutter/material.dart';
// import 'package:isar/isar.dart';

// class IsarMyMessageDataSource implements MyMessageDataSource {
//   final Isar _isar;
//   IsarMyMessageDataSource(this._isar);

//   Query<MyMessageModel> get _myMessageGetAllQuery =>
//       _isar.myMessageModels.where(sort: Sort.asc).build();

//   //自分のメッセージを保存するメソッド
//   @override
//   Future<void> insert(MyMessageModel myMessage) async {
//     await _isar.writeTxn(
//       () async {
//         await _isar.myMessageModels
//             .put(myMessage)
//             .then((value) => debugPrint("自分のメッセージを保存しました"));
//       },
//     );
//   }

//   //自分のメッセージを全て取得するメソッド
//   @override
//   Stream<List<MyMessageModel>> getAll() {
//     return _myMessageGetAllQuery.watch(fireImmediately: true);
//   }
// }
