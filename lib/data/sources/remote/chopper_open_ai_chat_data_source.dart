import 'package:chopper/chopper.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/chat_data_source.dart';

part 'chopper_open_ai_chat_data_source.chopper.dart';

@ChopperApi(baseUrl: 'https://api.openai.com/v1/chat/completions')
abstract class ChopperOpenAIChatDataSource extends ChopperService
    implements ChatDataSource {
  static ChopperOpenAIChatDataSource create() =>
      _$ChopperOpenAIChatDataSource(ChopperClient());

  @override
  @Post(
    headers: {'Content-Type': 'application/json'},
  )
  Future<Response> getInfo(
    @Body() String body,
    @Header('Authorization') String apiKey,
  );
}
