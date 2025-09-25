import 'package:flutter/material.dart';

class PlaceholderExample extends StatelessWidget {
  const PlaceholderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Placeholder(
          color: Colors.red,
          strokeWidth: 2,
          fallbackHeight: 100,
          fallbackWidth: 100,
        ),
        SizedBox(height: 20),
        Placeholder(
          color: Colors.blue,
          strokeWidth: 4,
          fallbackHeight: 150,
          fallbackWidth: 200,
        ),
      ],
    );
  }
}
