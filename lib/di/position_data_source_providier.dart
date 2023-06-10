
import 'package:cooking_completly_understood/data/sources/location_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final positionDataSourceProvider = Provider<PositionDataSource>((ref) {
  return PositionDataSource();
});