import 'package:cooking_completly_understood/ui/view/widget/menu_item.dart';
import 'package:flutter/material.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '過去の料理の栄養バランスなど',
          ),
          MenuItem(),
        ],
      ),
    );
  }
}
