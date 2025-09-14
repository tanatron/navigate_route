import 'package:flutter/material.dart';

class MessageProvider extends ChangeNotifier {
  String _itemId = '';
  String _message = '';

  String get itemId => _itemId;
  String get message => _message;

  void setMessage(String itemId, String message) {
    _itemId = itemId;
    _message = message;
    notifyListeners();
  }
}
