import 'package:cooking_completly_understood/ui/view/widget/radar_chart_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widget/menu_item.dart';

class AnalyticsScreen extends HookConsumerWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final recipeState = ref.watch(recipeStateProvider);

    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '過去の料理の栄養バランス',
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: RadarChartView(),
            ),
            // MenuItem(),
          ],
        ),
      ),
    );
  }
}
