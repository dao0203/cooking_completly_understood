import 'dart:convert';

import 'package:cooking_completly_understood/data/models/palm_api_response/palm_api_response.dart';
import 'package:cooking_completly_understood/data/sources/remote/palm_api_data_source.dart';
import 'package:cooking_completly_understood/domain/repositories/message_repository.dart';
import 'package:cooking_completly_understood/utils/constants.dart';

class MessageRepositoryImpl implements MessageRepository {
  final PaLMApiDataSource _paLMApiDataSource;

  MessageRepositoryImpl(this._paLMApiDataSource);

  @override
  Future<String> sendAndReceiveMessage(String sendedMessage) async {
    //リクエストボディを作成
    final requestBody = json.encode(getRequestBodyForPaLMApi(sendedMessage));

    //リクエストを送信してレスポンスを受け取る
    final response = await _paLMApiDataSource.getMessage(requestBody);

    //レスポンスボディをパース
    final paLMApiRsponse = PaLMApiResponse.fromJson(json.decode(response.body));

    //パースしたデータのoutputを返す
    return paLMApiRsponse.candidates[0].output;
  }
}
