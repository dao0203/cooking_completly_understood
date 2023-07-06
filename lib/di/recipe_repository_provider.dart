import 'package:cooking_completly_understood/data/repositories/recipe_repository.dart';
import 'package:cooking_completly_understood/di/recipe_data_source_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final recipeRepositoryProvider = Provider((ref) async {
  final futureRecipeRepository = ref.read(recipeDataSourceProvider).then(
        (value) => RecipeRepository(value),
      );
  return futureRecipeRepository;
});
