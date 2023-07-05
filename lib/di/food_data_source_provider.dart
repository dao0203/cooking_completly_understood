import 'package:cooking_completly_understood/data/sources/isar_food_data_source.dart';
import 'package:cooking_completly_understood/di/isar_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final foodDataSourceProvider = Provider(
  (ref) {
    return ref.read(isarProvider).then(
          (isar) => IsarFoodDataSource(isar),
        );
  },
);
