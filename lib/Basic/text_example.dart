import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "Hello Flutter!",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),
        ),
        SizedBox(height: 20),
        Text(
          "This is an example of multi-line text. It will wrap automatically if it exceeds the width of the screen.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.blueGrey),
        ),
        SizedBox(height: 20),
        Text(
          "Underlined Text",
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.underline,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
