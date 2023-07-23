import 'package:cooking_completly_understood/di/repository_providers.dart';
import 'package:cooking_completly_understood/ui/view/screens/navigation.dart';
import 'package:cooking_completly_understood/ui/view/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //emailとpasswordを入力するテキストフィールドを作成
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: Center(
        child: Column(
          children: [
            //テキストフィールドを作成
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'メールアドレス',
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: 'パスワード',
              ),
            ),
            //ログインボタンを作成
            ElevatedButton(
              onPressed: () async {
                showDialog(
                  context: context,
                  builder: (context) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
                //emailとpasswordを使ってログイン
                await ref
                    .read(authRepositoryProvider)
                    .signInWithEmailAndPassword(
                      emailController.text,
                      passwordController.text,
                    )
                    .then((value) {
                  //ログインに成功したら、ホーム画面に遷移
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const Navigation(),
                      maintainState: false,
                    ),
                  );
                });
              },
              child: const Text('ログイン'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
              icon: const Icon(Icons.app_registration),
              label: const Text('ユーザ登録'),
            ),
          ],
        ),
      ),
    );
  }
}
