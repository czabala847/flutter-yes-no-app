import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hola amor', fromWho: FromWho.her),
    Message(text: 'Hola mi vida, como estas?', fromWho: FromWho.me),
    Message(text: 'Bien y tu?', fromWho: FromWho.her),
    Message(text: 'Bien tambien', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String message) async {
    
  }
}