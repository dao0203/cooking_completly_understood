
import 'package:cooking_completly_understood/data/models/my_message_model/my_message_model.dart';

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