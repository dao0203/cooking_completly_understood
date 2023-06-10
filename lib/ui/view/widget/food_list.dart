import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.9,
      child: Card(
        margin: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('おやさい'),
                IconButton(onPressed: (){},iconSize: 30, icon: const Icon(Icons.remove_circle_outline_rounded),),
              ]
            ),
          ),
        ),
    );
  }
}