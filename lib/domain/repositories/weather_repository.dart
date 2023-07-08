import 'package:cooking_completly_understood/domain/models/weather/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getCurrentWeather(double latitude, double longitude);
}
