import 'package:cooking_completly_understood/data/models/my_message_model/my_message_model.dart';

//getAllのテストデータ
final List<MyMessageModel> mockMyMessageModelList = [
  MyMessageModel()
    ..role = 'test1'
    ..content = 'test1'
    ..timeStamp = DateTime.now(),
  MyMessageModel()
    ..role = 'test2'
    ..content = 'test2'
    ..timeStamp = DateTime.now(),
  MyMessageModel()
    ..role = 'test3'
    ..content = 'test3'
    ..timeStamp = DateTime.now(),
];

//MyMessageModelのinsert用のテストデータ
final MyMessageModel mockMyMessageModelForInsertion = MyMessageModel()
  ..role = 'test4'
  ..content = 'test4'
  ..timeStamp = DateTime.now();
