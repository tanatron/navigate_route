import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {
                    'id': 'PROP-789',
                    'title': 'ข้อมูลจาก Named Route Args',
                  },
                );
              },
              child: const Text('Go to Detail Screen'),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {
                    'id': 'PROP-789',
                    'title': 'ข้อมูลจาก Named Route Args',
                  },
                );
              },
              child: const Text('Go to Detail Screen'),
            ),
          ],
        ),
      ),
    );
  }
}