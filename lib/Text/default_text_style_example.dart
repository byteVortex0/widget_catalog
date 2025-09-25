import 'package:flutter/material.dart';

class DefaultTextStyleExample extends StatelessWidget {
  const DefaultTextStyleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20,
        color: Colors.deepOrange,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("This is first text"),
          Text("This is second text"),
          Text(
            "This text overrides color",
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
