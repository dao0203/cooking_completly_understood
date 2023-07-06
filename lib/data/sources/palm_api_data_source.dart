import 'package:chopper/chopper.dart';
import 'package:cooking_completly_understood/utils/env.dart';

part 'palm_api_data_source.chopper.dart';

@ChopperApi(baseUrl: 'https://generativelanguage.googleapis.com')
abstract class PaLMApiDataSource extends ChopperService {
  static PaLMApiDataSource create() => _$PaLMApiDataSource(ChopperClient());

  @Post(
    path: '/v1beta2/models/text-bison-001:generateText?key=$palmApiKey',
    headers: {'Content-Type': 'application/json'},
  )
  Future<Response> getMessage(
    @Body() String body,
  );
}
