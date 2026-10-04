import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final inputDecoration = InputDecoration(
      hintText: 'Escribe un mensaje por favor',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      suffixIcon: Icon(Icons.send),
    );

    return TextField(
      decoration: inputDecoration,
      onChanged: (value) => print('Valor del input: $value'),
      onSubmitted: (value) => print('Valor del input enviado: $value'),
    );
  }
}
