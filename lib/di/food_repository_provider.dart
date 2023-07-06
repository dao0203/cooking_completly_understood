import 'package:cooking_completly_understood/data/repositories/food_repository.dart';
import 'package:cooking_completly_understood/di/food_data_source_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final foodRepositoryProvider = Provider((ref) {
  return ref.read(foodDataSourceProvider).then(
        (value) => FoodRepository(value),
      );
});
