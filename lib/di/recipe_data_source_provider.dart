import 'package:cooking_completly_understood/data/sources/isar_recipe_data_source.dart';
import 'package:cooking_completly_understood/di/isar_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final recipeDataSourceProvider = Provider((ref) async {
  final isar = await ref.read(isarProvider);
  return IsarRecipeDataSource(isar);
});
