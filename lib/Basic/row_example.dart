import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 80, height: 80, color: Colors.red),
        Container(width: 80, height: 80, color: Colors.green),
        Container(width: 80, height: 80, color: Colors.blue),
      ],
    );
  }
}
