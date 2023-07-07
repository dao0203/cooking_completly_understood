import 'package:cooking_completly_understood/data/repositories/food_repository_impl.dart';
import 'package:cooking_completly_understood/di/data_source_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final foodRepositoryProvider = Provider((ref) {
  return ref.read(foodDataSourceProvider).then(
        (value) => FoodRepositoryImpl(value),
      );
});
