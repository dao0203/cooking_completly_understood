import 'package:cooking_completly_understood/ui/state/recipe_by_id_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomSheetRecipe extends HookConsumerWidget {
  const BottomSheetRecipe(this.recipeId, {super.key});
  final int recipeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipeByIdState = ref.watch(recipeByIdStateProvider(recipeId));
    return SingleChildScrollView(
      child: recipeByIdState.when(
        data: (recipeState) {
          return StreamBuilder(
            stream: recipeState,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text("エラーが発生しました"),
                );
              } else {
                final recipe = snapshot.data!;
                return Column(
                  children: [
                    Text(recipe.name),
                    Text(recipe.description),
                    Text(recipe.cookingTime.toString()),
                    Text(recipe.ingredientName.toString()),
                    Text(recipe.ingredientQuantity.toString()),
                    Text(recipe.stepNumber.toString()),
                    Text(recipe.stepDescription.toString()),
                    Text(recipe.calorie.toString()),
                    Text(recipe.protein.toString()),
                    Text(recipe.fat.toString()),
                    Text(recipe.carbohydrate.toString()),
                    Text(recipe.salt.toString()),
                    Text(recipe.timeStamp.toString()),
                    Text(recipe.isMade.toString()),
                    Text(recipe.isFavorite.toString()),
                  ],
                );
              }
            },
          );
        },
        error: (error, stackTrace) => const Center(
          child: Text("エラーが発生しました"),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
