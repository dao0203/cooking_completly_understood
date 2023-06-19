import 'package:cooking_completly_understood/ui/state/foods_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FoodList extends HookConsumerWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foods = ref.watch(foodsStateProvider);
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: foods.when(
          data: (foods) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: StreamBuilder(
                  stream:
                      foods, //foodsStateProviderのbuild()で返されたStream<List<ImmuFood>>を流す
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return const Center(child: Text('エラーが発生しました。'));
                    } else {
                      final foodList = snapshot.data;
                      return ListView.builder(
                          shrinkWrap: true,
                          itemCount: foodList!.length,
                          itemBuilder: (context, index) {
                            final food = foodList[index];
                            return Card(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(food.name),
                                  IconButton(
                                    onPressed: () {
                                      ref
                                          .read(foodsStateProvider.notifier)
                                          .deleteFood(food.id);
                                    },
                                    iconSize: 30,
                                    icon: const Icon(
                                        Icons.remove_circle_outline_rounded),
                                  ),
                                ],
                              ),
                            );
                          });
                    }
                  },
                ),
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Text('エラーが発生しました。')),
    );
  }
}
