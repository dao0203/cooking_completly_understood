import 'package:cooking_completly_understood/di/repository_providers.dart';
import 'package:cooking_completly_understood/ui/view/screens/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //簡易的なサインアップ画面を作成してください
    //emailとpasswordを入力するテキストフィールドを作成
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    //確認用のpasswordを入力するテキストフィールドを作成
    final passwordConfirmController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
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
            TextField(
              controller: passwordConfirmController,
              decoration: const InputDecoration(
                hintText: 'パスワード(確認用)',
              ),
            ),
            //サインアップボタンを作成
            ElevatedButton(
              onPressed: () async {
                showDialog(
                    context: context,
                    builder: (context) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                    barrierDismissible: false);
                //emailとpasswordを使ってサインアップ
                await ref
                    .read(authRepositoryProvider)
                    .signUpWithEmailAndPassword(
                      emailController.text,
                      passwordController.text,
                    )
                    .then((value) {
                  //サインアップに成功したら、プロフィール画面に遷移
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const Navigation(),
                      maintainState: false,
                    ),
                  );
                });
              },
              child: const Text('サインアップ'),
            ),
          ],
        ),
      ),
    );
  }
}
