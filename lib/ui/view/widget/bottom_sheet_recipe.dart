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
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 1, //レシピは1つしかないので1
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        
                        //レシピ名
                        Text(
                          recipe[index].name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //レシピの説明
                        Text(
                          recipe[index].description,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        //レシピの材料
                        Text(
                          recipe[index].ingredientName.toString(),
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        //レシピの手順
                        Text(
                          recipe[index].stepDescription.toString(),
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    );
                  },
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
