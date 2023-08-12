import 'package:camera/camera.dart';
import 'package:recipe_lite/utils/constants.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/material.dart';
import 'package:recipe_lite/ui/theme/app_theme.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // .evnから環境変数を読み込む
  await dotenv.load(fileName: '.env');
  OpenAI.apiKey = dotenv.env['OPEN_AI_API_KEY']!;
  OpenAI.instance.chat.create(
    model: openAIModel,
    messages: [
      const OpenAIChatCompletionChoiceMessageModel(
        role: OpenAIChatMessageRole.system,
        content: 'あなたは、家庭料理のプロフェッショナルです',
      ),
    ],
  ).then((value) => debugPrint(value.choices.first.message.content));
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );
  cameras = await availableCameras();

  runApp(
    const ProviderScope(
      child: AppTheme(),
    ),
  );
}
