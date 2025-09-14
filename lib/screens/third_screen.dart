import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:navigate_route/providers/message_provider.dart';

class ThirdScreen extends StatelessWidget {
  static String routeName = '/third';
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final messageProvider = Provider.of<MessageProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Third Screen")),
      body: Center(
        child: Column(
          children: [
            Text("Item id: ${messageProvider.itemId}"),
            Text("Message: ${messageProvider.message}"),
            ElevatedButton(
              onPressed: () {
                messageProvider.setMessage("item3", "Updated from Third Screen!");
              },
              child: const Text("Update Message"),
            ),
          ],
        ),
      ),
    );
  }
}
