import 'package:flutter/material.dart';
import 'package:cooking_completly_understood/ui/view/screens/chat_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     Text(
      //       'おすすめの献立・レシピを提案',
      //     ),
      //   ],
      // ),
      child: ChatScreen(),
    );
  }
}
