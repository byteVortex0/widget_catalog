import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 100, height: 100, color: Colors.red),
        const SizedBox(height: 20),
        Container(width: 100, height: 100, color: Colors.green),
        const SizedBox(height: 20),
        Container(width: 100, height: 100, color: Colors.blue),
      ],
    );
  }
}
