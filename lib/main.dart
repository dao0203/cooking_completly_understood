import 'package:camera/camera.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/material.dart';
import 'package:cooking_completly_understood/ui/theme/app_theme.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // .evnから環境変数を読み込む
  await dotenv.load(fileName: '.env');
  OpenAI.apiKey = dotenv.env['OPEN_AI_API_KEY']!;
  await OpenAI.instance.chat.create(
    model: 'gpt-3.5-turbo',
    messages: [
      const OpenAIChatCompletionChoiceMessageModel(
        role: OpenAIChatMessageRole.system,
        content: 'あなたは、家庭料理のプロフェッショナルです',
      ),
    ],
  );
  cameras = await availableCameras();

  runApp(
    const ProviderScope(
      child: AppTheme(),
    ),
  );
}
