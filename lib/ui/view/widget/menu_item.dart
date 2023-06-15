import 'package:cooking_completly_understood/ui/view/screens/menu_details_screen.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const MenuDetailsScreen();
            },
          ),
        );
      },
      child: Card(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('肉じゃが',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.timer_rounded),
                    Text('10分'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_month_rounded),
                    Text('2023/1/1'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
