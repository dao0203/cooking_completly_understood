import 'package:recipe_lite/ui/state/foods_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FoodListData extends HookConsumerWidget {
  const FoodListData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foods = ref.watch(foodsStateProvider);
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: foods.when(
          data: (foods) {
            final foodList = foods;
            return Text(
              '使える食材：${foodList.map((food) => food.name).join(', ')}',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
              style: const TextStyle(
                fontSize: 16,
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => const Text('エラーが発生しました。')),
    );
  }
}
