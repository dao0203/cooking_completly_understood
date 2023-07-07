import 'package:cooking_completly_understood/data/repositories/message_repository_impl.dart';
import 'package:cooking_completly_understood/data/sources/remote/palm_api_data_source.dart';
import 'package:cooking_completly_understood/domain/repositories/message_repository.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  late final PaLMApiDataSource paLMApiDataSource;
  late final MessageRepository messageRepository;
  late final String responseMessage;
  setUp(() async {
    //PaLMApiDataSourceを作成
    paLMApiDataSource = PaLMApiDataSource.create();
    messageRepository = MessageRepositoryImpl(paLMApiDataSource);

    const String promptString = "please give me a recipe that uses daikon";
    final String sendedMessage =
        messageThatUserInputtedInEnglish(promptString, '30', '3');

    //送信するリクエストボディを作成
    responseMessage =
        await messageRepository.sendAndReceiveMessage(sendedMessage);
  });
  test('東京駅の気温と受け取ったメッセージからPaLMApiの返信を受け取る単体テスト',
      () => expect(responseMessage, isNotEmpty));
}
