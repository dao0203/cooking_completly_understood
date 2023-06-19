import 'package:chopper/chopper.dart';
import 'package:cooking_completly_understood/utils/env.dart';

part 'maker_suite_service.chopper.dart';

@ChopperApi(baseUrl: 'https://generativelanguage.googleapis.com')
abstract class MakerSuiteService extends ChopperService {
  static MakerSuiteService create() => _$MakerSuiteService(ChopperClient());

  @Post(
    path: '/v1beta2/models/text-bison-001:generateText?key=$palmApiKey',
    headers: {'Content-Type': 'application/json'},
  )
  Future<Response> getMessage(
    @Body() String body,
  );
}
