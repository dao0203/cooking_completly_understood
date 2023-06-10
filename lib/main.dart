import 'package:cooking_completly_understood/ui/theme/app_theme.dart';
import 'package:dart_openai/openai.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  //ここにAPIキーを設定していただけると幸いです。
  // OpenAI.apiKey = "hoge";
  runApp(
    const ProviderScope(
      child: AppTheme(),
    ),
  );
}
