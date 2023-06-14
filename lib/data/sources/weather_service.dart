import 'package:chopper/chopper.dart';

part 'weather_service.chopper.dart';

@ChopperApi(baseUrl: 'https://api.open-meteo.com')
abstract class WeatherService extends ChopperService {
  static WeatherService create() => _$WeatherService(ChopperClient());

  @Get(
      path:
          '/v1/forecast?latitude={latitude}&longitude={longtitude}&current_weather=true')
  Future<Response> getWeatherInfo(
    @Path('latitude') double latitude,
    @Path("longtitude") double longtitude,
  );
}
