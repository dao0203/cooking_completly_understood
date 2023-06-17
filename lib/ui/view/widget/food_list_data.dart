import 'package:cooking_completly_understood/ui/state/foods_state.dart';
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
            return StreamBuilder(
              stream:
                  foods, //foodsStateProviderのbuild()で返されたStream<List<ImmuFood>>を流す
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return const Center(child: Text('エラーが発生しました。'));
                } else {
                  final foodList = snapshot.data;
                  return Text(
                    '使える食材：${foodList!.map((food) => food.name).join(', ')}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  );
                }
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => const Text('エラーが発生しました。')),
    );
  }
}
