import 'package:chopper/chopper.dart';

part 'palm_api_data_source.chopper.dart';

@ChopperApi(baseUrl: 'https://generativelanguage.googleapis.com')
abstract class PaLMApiDataSource extends ChopperService {
  static PaLMApiDataSource create() => _$PaLMApiDataSource(ChopperClient());

  @Post(
    path: '/v1beta2/models/text-bison-001:generateText?key={PALM_KEY}',
    headers: {'Content-Type': 'application/json'},
  )
  Future<Response> getInfo(
    @Body() String body,
    @Path("PALM_KEY") String paLMKey,
  );
}
