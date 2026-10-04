import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();

  List<Message> messages = [
    Message(text: 'Hola amor', fromWho: FromWho.her),
    Message(text: 'Hola mi vida, como estas?', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String message) async {
    if(message.isEmpty) return;

    final newMessage = Message(text: message, fromWho: FromWho.me);
    messages.add(newMessage);
    notifyListeners();
    await moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {

    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}