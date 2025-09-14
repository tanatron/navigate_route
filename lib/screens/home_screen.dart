import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:navigate_route/providers/message_provider.dart';
import 'package:navigate_route/screens/detail_screen.dart';
import 'package:navigate_route/screens/third_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final messageProvider = Provider.of<MessageProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {"itemId": "item1", "message": "Hello from Home!"},
                );
              },
              child: const Text("Go to Detail (with props)"),
            ),
            ElevatedButton(
              onPressed: () {
                messageProvider.setMessage("item2", "Hello from Provider!");
                Navigator.pushNamed(context, ThirdScreen.routeName);
              },
              child: const Text("Go to Third (with Provider)"),
            ),
          ],
        ),
      ),
    );
  }
}
