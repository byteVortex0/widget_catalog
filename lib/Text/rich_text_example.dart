import 'package:flutter/material.dart';

class RichTextExample extends StatelessWidget {
  const RichTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Hello ',
          style: TextStyle(fontSize: 24, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: 'Flutter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
                fontSize: 26,
              ),
            ),
            TextSpan(
              text: ' World!',
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
