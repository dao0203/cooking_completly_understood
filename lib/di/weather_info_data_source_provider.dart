
import 'package:cooking_completly_understood/data/sources/weather_info_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final weaatherInfoDataSourceProvider = Provider<WeatherInfoDataSource>((ref) {
  return WeatherInfoDataSource.create();
});