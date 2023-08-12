import 'package:recipe_lite/ui/state/foods_state.dart';
import 'package:recipe_lite/ui/view/widgets/food_list.dart';
import 'package:recipe_lite/ui/view/widgets/unfocus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foodTextController = useTextEditingController();
    return Scaffold(
      body: Center(
        child: Unfocus(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //レシピの食材を登録するTextFieldを表示
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '食材を追加',
                ),
                controller: foodTextController,

                //打ち込みが完了したら、食材を登録する
                onEditingComplete: () {
                  ref
                      .read(foodsStateProvider.notifier)
                      .insertFood(foodTextController.text);
                  foodTextController.clear();
                },
              ),
              const Text(
                '冷蔵庫にある材料',
              ),
              const FoodList()
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Navigator.of(context).push(
      //     //   MaterialPageRoute(
      //     //     builder: (context) {
      //     //     },
      //     //   ),
      //     // );
      //   },
      //   child: const Icon(Icons.add_circle_outline_rounded),
      // ),
    );
  }
}
