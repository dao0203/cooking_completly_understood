import 'package:chopper/chopper.dart';

part 'chopper_open_meteo_api_data_source.chopper.dart';

@ChopperApi(baseUrl: 'https://api.open-meteo.com')
abstract class ChopperOpenMeteoApiDataSource extends ChopperService {
  static ChopperOpenMeteoApiDataSource create() =>
      _$ChopperOpenMeteoApiDataSource(ChopperClient());

  @Get(
      path:
          '/v1/forecast?latitude={latitude}&longitude={longtitude}&current_weather=true')
  Future<Response> getInfo(
    @Path('latitude') double latitude,
    @Path("longtitude") double longtitude,
  );
}
