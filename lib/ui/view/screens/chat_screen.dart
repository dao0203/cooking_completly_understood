import 'package:cooking_completly_understood/ui/state/message_state.dart';
import 'package:cooking_completly_understood/ui/view/widget/bottom_sheet_recipe.dart';
import 'package:cooking_completly_understood/ui/view/widget/unfocus.dart';
import 'package:cooking_completly_understood/utils/utils.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatScreen extends HookConsumerWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(messagesStateProvider);
    final messageController = useTextEditingController();
    final screenWidth = MediaQuery.of(context).size.width;
    final isWaiting = useState(false);

    return Scaffold(
      body: Unfocus(
        child: Column(
          children: [
            // メッセージ一覧
            Expanded(
              child: messages.when(
                data: (value) {
                  return StreamBuilder(
                    stream: value,
                    builder: (context, snapshot) {
                      //ローディング中
                      if (!snapshot.hasData) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                        //エラー
                      } else if (snapshot.hasError) {
                        return const Text('エラーが発生しました。再度お試しください。');
                      } else {
                        return ListView.separated(
                          key: const PageStorageKey<String>('menuListView'),
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          reverse: true,
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            final message = snapshot
                                .data![snapshot.data!.length - index - 1];
                            return Row(
                              key: Key(message.hashCode.toString()),
                              mainAxisAlignment: message.role ==
                                      OpenAIChatMessageRole.user.name
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                              children: [
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: screenWidth * 0.75,
                                  ),
                                  child: GestureDetector(
                                    onTap: () async {
                                      //相手のメッセージが押された場合
                                      if (message.role ==
                                          OpenAIChatMessageRole
                                              .assistant.name) {
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                        //ボトムシートを表示させる
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (context) =>
                                              BottomSheetRecipe(message.id),
                                        );
                                      }
                                    },
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            message.role ==
                                                    OpenAIChatMessageRole
                                                        .user.name
                                                ? 20
                                                : 16,
                                          ),
                                          topRight: Radius.circular(
                                            message.role ==
                                                    OpenAIChatMessageRole
                                                        .user.name
                                                ? 16
                                                : 20,
                                          ),
                                          bottomLeft: Radius.circular(
                                            message.role ==
                                                    OpenAIChatMessageRole
                                                        .user.name
                                                ? 20
                                                : 4,
                                          ),
                                          bottomRight: Radius.circular(
                                            message.role ==
                                                    OpenAIChatMessageRole
                                                        .user.name
                                                ? 4
                                                : 20,
                                          ),
                                        ),
                                        color: message.role ==
                                                OpenAIChatMessageRole.user.name
                                            ? Theme.of(context)
                                                .colorScheme
                                                .secondary
                                                .withOpacity(0.1)
                                            : null,
                                        gradient: message.role !=
                                                OpenAIChatMessageRole.user.name
                                            ? LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .tertiaryContainer
                                                      .withOpacity(0.8),
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .primaryContainer
                                                      .withOpacity(0.8),
                                                ],
                                              )
                                            : null,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 16,
                                        ),
                                        //メッセージの内容
                                        child: Text(
                                          message.content,
                                          style: TextStyle(
                                            color: //ここでメッセージの送信者を判定する
                                                message.role ==
                                                        OpenAIChatMessageRole
                                                            .user.name
                                                    ? Theme.of(context)
                                                        .colorScheme
                                                        .secondary
                                                    : alphaBlend(
                                                        Theme.of(context)
                                                            .colorScheme
                                                            .primary
                                                            .withOpacity(0.5),
                                                        Theme.of(context)
                                                            .colorScheme
                                                            .tertiary,
                                                      ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //アシスタントの場合は詳細アイコンを表示する
                                if (message.role ==
                                    OpenAIChatMessageRole.assistant.name)
                                  IconButton(
                                    onPressed: () {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) =>
                                            BottomSheetRecipe(message.id),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.info_outline_rounded,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground
                                          .withOpacity(0.5),
                                    ),
                                  ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 16),
                        );
                      }
                    },
                  );
                },
                error: (Object error, StackTrace stackTrace) {
                  return const Text('エラーが発生しました。再度お試しください。');
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),

            // 送信フォーム
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: messageController,
                        maxLines: 5,
                        minLines: 1,
                        cursorRadius: const Radius.circular(4),
                        decoration: InputDecoration(
                          hintText: 'じゃがいもを使った簡単レシピを教えて',
                          hintStyle: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.5),
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
                            final sendMessage = ref
                                .read(messagesStateProvider.notifier)
                                .sendMessageAndReceiveMessage(
                                  messageController.text,
                                );
                            isWaiting.value = true;
                            messageController.clear();
                            //TODO: この処理が終わったら一番下までスクロールする
                            await sendMessage
                                .then((value) => isWaiting.value = false);
                          }
                        },
                        icon: !isWaiting.value
                            ? Icon(
                                Icons.send_rounded,
                                color: Theme.of(context).colorScheme.primary,
                              )
                            : SizedBox(
                                width: 24,
                                height: 24,
                                child: FittedBox(
                                  child: CircularProgressIndicator(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),
                      ),
                    // 送信中
                    if (isWaiting.value)
                      IconButton(
                        onPressed: null,
                        icon: SizedBox(
                          width: 24,
                          height: 24,
                          child: FittedBox(
                            child: CircularProgressIndicator(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
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
