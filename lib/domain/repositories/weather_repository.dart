import 'package:recipe_lite/domain/models/weather/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getCurrentWeather(double latitude, double longitude);
}
