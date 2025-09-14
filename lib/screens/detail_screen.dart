import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:navigate_route/providers/message_provider.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/detail';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final messageProvider = Provider.of<MessageProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Detail Screen")),
      body: Center(
        child: Column(
          children: [
            Text('Item id: ${messageProvider.itemId}'),
            Text("Detail: ${messageProvider.message}"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'item1 detail returned.');
              },
              child: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
