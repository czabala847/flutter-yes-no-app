import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onValueChanged;

  const MessageFieldBox({super.key, required this.onValueChanged});

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
          onValueChanged.call(text);
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
      // onChanged: (value) => print('Valor del input: $value'),
      onSubmitted: (value) {
        onValueChanged.call(value);
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
