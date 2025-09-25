import 'package:flutter/material.dart';

class LimitedBoxExample extends StatelessWidget {
  const LimitedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Without LimitedBox:"),
          Container(
            color: Colors.blue[100],
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  height: 300,
                  width: 500, // كبير جدًا
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text("With LimitedBox:"),
          Container(
            color: Colors.orange[100],
            child: LimitedBox(
              maxHeight: 150,
              maxWidth: 200,
              child: Container(
                color: Colors.orange,
                height: 300, // تجاوز الـ maxHeight
                width: 500, // تجاوز الـ maxWidth
              ),
            ),
          ),
        ],
      ),
    );
  }
}
