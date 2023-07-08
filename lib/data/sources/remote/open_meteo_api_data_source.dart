import 'package:chopper/chopper.dart';

part 'open_meteo_api_data_source.chopper.dart';

@ChopperApi(baseUrl: 'https://api.open-meteo.com')
abstract class OpenMeteoApiDataSource extends ChopperService {
  static OpenMeteoApiDataSource create() =>
      _$OpenMeteoApiDataSource(ChopperClient());

  @Get(
      path:
          '/v1/forecast?latitude={latitude}&longitude={longtitude}&current_weather=true')
  Future<Response> getInfo(
    @Path('latitude') double latitude,
    @Path("longtitude") double longtitude,
  );
}
