import 'package:recipe_lite/auth_gate.dart';
import 'package:recipe_lite/utils/constants.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppTheme extends StatelessWidget {
  const AppTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynemic, darkDynemic) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Recipe Lite',
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('ja', 'JP')],
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
          home: const AuthGate(),
        );
      },
    );
  }
}
