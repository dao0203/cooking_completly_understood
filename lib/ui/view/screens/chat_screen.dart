import 'package:cooking_completly_understood/ui/state/message_state.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_screen.g.dart';

@riverpod
class Messages extends _$Messages {
  @override
  List<OpenAIChatCompletionChoiceMessageModel> build() => [
        // システムメッセージでAIの動作を調整
        const OpenAIChatCompletionChoiceMessageModel(
          content: '日本語でレシピについて相談されます。あなたは家庭料理に詳しい料理研究家です。',
          role: OpenAIChatMessageRole.system,
        ),
      ];
  // UI調整用のダミーメッセージ
//   => [
//         OpenAIChatCompletionChoiceMessageModel(
//           content: 'Flutterとはなんですか？',
//           role: 'user',
//         ),
//         OpenAIChatCompletionChoiceMessageModel(
//           content: '''
// Flutterとは、Googleが開発しているオープンソースのUIフレームワークです。Flutterは、iOSやAndroid、Web、Windows、macOS、Linuxなど、複数のプラットフォームで動作する高品質なネイティブアプリを簡単に作成することができます。

// Flutterの特徴は、高速で美しいUIを簡単に作成できることです。Flutterは、アニメーションやエフェクトなどの複雑なUIをスムーズに動作させることができます。また、Flutterのウィジェットライブラリには、さまざまなデザイン要素が含まれており、カスタマイズ性が高く、デザインに応じたUIを簡単に作成することができます。

// Flutterは、Dartというプログラミング言語で開発されています。Dartは、高い生産性、高速処理、型付け言語としての特徴を持っています。Flutterの開発環境には、Android StudioやVisual Studio Codeなどがあり、また、Flutterのコミュニティも活発で、多くのコンポーネントやプラグインが公開されています。''',
//           role: 'assistant',
//         ),
//       ];

  Future<void> sendMessage(String message) async {
    // メッセージをuserロールでモデル化
    final newUserMessage = OpenAIChatCompletionChoiceMessageModel(
      content: message,
      role: OpenAIChatMessageRole.user,
    );
    // メッセージを追加
    state = [
      ...state,
      newUserMessage,
    ];
    // ChatGPTに聞く
    final chatCompletion = await OpenAI.instance.chat.create(
      model: 'gpt-3.5-turbo',
      // これまでのやりとりを含めて送信
      messages: state,
    );
    // 結果を追加
    state = [
      ...state,
      chatCompletion.choices.first.message,
    ];
  }
}

class ChatScreen extends HookConsumerWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(messagesStateProvider);
    final messageController = useTextEditingController();
    final screenWidth = MediaQuery.of(context).size.width;
    final isWaiting = useState(false);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // メッセージ一覧
            Expanded(
              child: ListView.separated(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  // systemロールのメッセージは表示しない
                  if (message.role == OpenAIChatMessageRole.system) {
                    return const SizedBox();
                  }

                  return Align(
                    key: Key(message.hashCode.toString()),
                    alignment: message.role == OpenAIChatMessageRole.user
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: screenWidth * 0.8,
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: message.role == OpenAIChatMessageRole.user
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.secondary,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                          child: Text(
                            message.content,
                            style: TextStyle(
                              color: message.role == OpenAIChatMessageRole.user
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
              ),
            ),
            // 送信フォーム
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: messageController,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: 'じゃがいもを使った簡単レシピを教えて',
                          hintStyle: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.6),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 16,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // 送信ボタン
                    if (!isWaiting.value)
                      IconButton(
                        onPressed: () async {
                          if (messageController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('メッセージを入力してください'),
                              ),
                            );
                          } else {
                            final sendMessage =
                                ref.read(messagesStateProvider.notifier).sendMessageAndReceiveMessage(
                                      messageController.text,
                                    );
                            isWaiting.value = true;
                            messageController.clear();
                            await sendMessage;
                            isWaiting.value = false;
                          }
                        },
                        icon: !isWaiting.value
                            ? const Icon(Icons.send)
                            : const SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(),
                              ),
                      ),
                    // 送信中
                    if (isWaiting.value)
                      const IconButton(
                        onPressed: null,
                        icon: SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
