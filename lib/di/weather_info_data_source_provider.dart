import 'package:cooking_completly_understood/data/sources/remote/open_meteo_api_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final weatherInfoDataSourceProvider = Provider<OpenMeteoApiDataSource>((ref) {
  return OpenMeteoApiDataSource.create();
});
