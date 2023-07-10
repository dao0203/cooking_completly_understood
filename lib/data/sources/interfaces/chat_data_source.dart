import 'package:chopper/chopper.dart';

abstract class ChatDataSource {
  Future<Response> getInfo(
    String body,
    String apiKey,
  );
}
