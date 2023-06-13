import 'package:cooking_completly_understood/data/repositories/recipe_repository/recipe_repository.dart';
import 'package:cooking_completly_understood/di/recipe_service_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final recipeRepositoryProvider = Provider((ref) async {
  final container = ProviderContainer();
  final futureRecipeRepository =  container.read(recipeServiceProvider).then(
        (value) => RecipeRepository(value),
      );
  
  ref.onDispose(() { 
    container.dispose();
  });

  return futureRecipeRepository;
});
