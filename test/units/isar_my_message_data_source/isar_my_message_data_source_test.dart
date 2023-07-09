import 'package:cooking_completly_understood/data/models/my_message_model/my_message_model.dart';
import 'package:cooking_completly_understood/data/sources/local/isar_my_message_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';

import '../../mocks/mock_my_message_model_list.dart';
import '../../utils/isar_db_directory.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late Isar isar;
  late IsarMyMessageDataSource isarMyMessageDataSource;
  late List<MyMessageModel> firstGetAllResult;
  late List<MyMessageModel> getAllResult;
  late List<MyMessageModel> insertResult;
  final IsarDbDirectory isarDbDirectory = IsarDbDirectory();
  //insert用のテストデータ
  final MyMessageModel myMessageModel = MyMessageModel()
    ..role = 'test4'
    ..content = 'test4'
    ..timeStamp = DateTime.now();

  setUpAll(() async {
    await Isar.initializeIsarCore(download: true);
    await isarDbDirectory.create();
    isar = await Isar.open([MyMessageModelSchema],
        directory: isarDbDirectory.path);
    isarMyMessageDataSource = IsarMyMessageDataSource(isar);

    // テスト用のデータをinsert
    for (final myMessageModel in mockMyMessageModelList) {
      await isarMyMessageDataSource.insert(myMessageModel);
    }

    // getAllの結果を取得
    firstGetAllResult = await isarMyMessageDataSource.getAll().first;
  });

  tearDownAll(() async {
    await isar.close();
    await isarDbDirectory.delete();
  });
  group('getAll', () {
    setUpAll(() async {
      // getAllの結果を取得
      getAllResult = await isarMyMessageDataSource.getAll().first;
    });
    test('getAllの結果の長さがmockMyMesageModelListの長さと同じであること', () async {
      expect(getAllResult.length, mockMyMessageModelList.length);
    });
    test('getAllの結果のroleがmockMyMessageModelListのroleと同じであること', () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].role, mockMyMessageModelList[i].role);
      }
    });
    test('getAllの結果のcontentがmockMyMessageModelListのcontentと同じであること', () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].content, mockMyMessageModelList[i].content);
      }
    });
    test('getAllの結果のtimeStampがmockMyMessageModelListのtimeStampと同じであること', () {
      for (int i = 0; i < getAllResult.length; i++) {
        expect(getAllResult[i].timeStamp, mockMyMessageModelList[i].timeStamp);
      }
    });
  });

  group("insert", () {
    setUpAll(() async {
      // テスト用のデータをinsert
      await isarMyMessageDataSource.insert(myMessageModel);
      // insertの結果を取得
      insertResult = await isarMyMessageDataSource.getAll().first;
      debugPrint(insertResult.length.toString());
    });

    test("insertの結果の長さがmockMyMessageModelListの長さより1大きいこと",
        () => expect(insertResult.length, mockMyMessageModelList.length + 1));
    test("insertの結果のroleがgetAllの結果のroleと同じであること", () {
      expect(insertResult.last.role, myMessageModel.role);
    });
    test("insertの結果のcontentがgetAllの結果のcontentと同じであること", () {
      expect(insertResult.last.content, myMessageModel.content);
    });
    test("insertの結果のtimeStampがgetAllの結果のtimeStampと同じであること", () {
      expect(insertResult.last.timeStamp, myMessageModel.timeStamp);
    });
  });
}
