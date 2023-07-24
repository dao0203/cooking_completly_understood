import 'package:cooking_completly_understood/di/repository_providers.dart';
import 'package:cooking_completly_understood/ui/view/screens/navigation.dart';
import 'package:cooking_completly_understood/ui/view/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthGate extends HookConsumerWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authRepository = ref.read(authRepositoryProvider);
    return FutureBuilder<bool>(
      future: authRepository.isSignedIn(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!) {
            return const Navigation();
          } else {
            return const SignInScreen();
          }
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
