import 'package:cooking_completly_understood/data/sources/remote/palm_api_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final paLMApiDataSourceProvider = Provider((ref) {
  return PaLMApiDataSource.create();
});
