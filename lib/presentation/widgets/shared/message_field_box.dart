import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a question mark "?"',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      suffixIcon: IconButton(
        icon: Icon(Icons.send),
        onPressed: () {
          final text = textController.text;
          print('Valor del input enviado icono: $text');
          textController.clear();
        },
      ),
    );

    return TextField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onChanged: (value) => print('Valor del input: $value'),
      onSubmitted: (value) {
        print('Valor del input enviado: $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
