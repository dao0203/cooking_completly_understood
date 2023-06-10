import 'package:cooking_completly_understood/ui/view/screens/analytics_screen.dart';
import 'package:cooking_completly_understood/ui/view/screens/camera_screen.dart';
import 'package:cooking_completly_understood/ui/view/screens/menu_screen.dart';
import 'package:cooking_completly_understood/ui/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  var _currentPageIndex = 1;

  final _pages = <Widget>[
    const MenuScreen(),
    const HomeScreen(),
    const AnalyticsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        statusBarColor: Colors.transparent,
      ),
    );
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );
    return Scaffold(
      appBar: [
        AppBar(
          title: const Text('献立'),
        ),
        AppBar(
          title: const Text('料理完全に理解した'),
        ),
        AppBar(
          title: const Text('分析'),
        ),
      ][_currentPageIndex],
      body: _pages[_currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        selectedIndex: _currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.restaurant_rounded),
            selectedIcon: Icon(Icons.restaurant_rounded),
            label: '献立',
          ),
          NavigationDestination(
            icon: Icon(Icons.kitchen_rounded),
            selectedIcon: Icon(Icons.kitchen),
            label: '冷蔵庫',
          ),
          NavigationDestination(
            icon: Icon(Icons.analytics_outlined),
            selectedIcon: Icon(Icons.analytics_rounded),
            label: '分析',
          ),
        ],
      ),
      floatingActionButton: [
        null,
        FloatingActionButton.large(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const CameraScreen();
                },
              ),
            );
          },
          child: const Icon(Icons.add_a_photo_outlined),
        ),
        null,
      ][_currentPageIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
