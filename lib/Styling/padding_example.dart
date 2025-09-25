import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget {
  const PaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            color: Colors.red,
            width: 100,
            height: 100,
            child: const Center(child: Text("All 16")),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Container(
            color: Colors.green,
            width: 150,
            height: 80,
            child: const Center(child: Text("Symmetric")),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Container(
            color: Colors.blue,
            width: 120,
            height: 120,
            child: const Center(child: Text("Only Left & Top")),
          ),
        ),
      ],
    );
  }
}
