import 'package:cooking_completly_understood/data/sources/weather_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final weatherInfoDataSourceProvider = Provider<WeatherService>((ref) {
  return WeatherService.create();
});
