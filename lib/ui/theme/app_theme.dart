import 'package:cooking_completly_understood/ui/view/screens/home_screen.dart';
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
                  seedColor: Colors.blue,
                ),
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: darkDynemic?.harmonized() ??
                ColorScheme.fromSeed(
                  seedColor: Colors.blue,
                  brightness: Brightness.dark,
                ),
            brightness: Brightness.dark,
          ),
          home: const HomeScreen(
            title: 'Home',
          ),
        );
      },
    );
  }
}
