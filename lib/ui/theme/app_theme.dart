import 'package:cooking_completly_understood/ui/view/screens/navigation.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

class AppTheme extends StatelessWidget {
  const AppTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynemic, darkDynemic) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Cooking Completly Understood',
          themeMode: ThemeMode.system,
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightDynemic?.harmonized() ??
                ColorScheme.fromSeed(
                  seedColor: seedColor,
                ),
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: darkDynemic?.harmonized() ??
                ColorScheme.fromSeed(
                  seedColor: seedColor,
                  brightness: Brightness.dark,
                ),
            brightness: Brightness.dark,
          ),
          home: const Navigation(),
        );
      },
    );
  }
}
