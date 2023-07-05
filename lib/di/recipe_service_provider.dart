import 'package:cooking_completly_understood/data/sources/recipe_service.dart';
import 'package:cooking_completly_understood/di/isar_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final recipeServiceProvider = Provider((ref) async {
  final isar = await ref.read(isarProvider);
  return RecipeService(isar);
});
