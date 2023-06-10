import 'package:chopper/chopper.dart';

part 'weather_info_data_source.chopper.dart';

@ChopperApi(baseUrl: 'https://api.open-meteo.com')
abstract class WeatherInfoDataSource extends ChopperService {
  static WeatherInfoDataSource create() =>
      _$WeatherInfoDataSource(ChopperClient());

  @Get(
      path:
          '/v1/forecast?latitude={latitude}&longitude={longtitude}&current_weather=true')
  Future<Response> getWeatherInfo(
    @Path('latitude') double latitude,
    @Path("longtitude") double longtitude,
  );
}
