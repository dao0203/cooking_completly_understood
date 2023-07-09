import 'package:chopper/chopper.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/chat_data_source.dart';

part 'palm_api_data_source.chopper.dart';

@ChopperApi(baseUrl: 'https://generativelanguage.googleapis.com')
abstract class PaLMApiDataSource extends ChopperService implements ChatDataSource{
  static PaLMApiDataSource create() => _$PaLMApiDataSource(ChopperClient());

  @override
  @Post(
    path: '/v1beta2/models/text-bison-001:generateText?key={PALM_KEY}',
    headers: {'Content-Type': 'application/json'},
  )
  Future<Response> getInfo(
    @Body() String body,
    @Path("PALM_KEY") String apiKey,
  );
}
