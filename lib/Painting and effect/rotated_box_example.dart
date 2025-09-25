import 'package:flutter/material.dart';

class RotatedBoxExample extends StatelessWidget {
  const RotatedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 50,
            color: Colors.blue,
            child: const Center(
              child: Text('Original', style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(width: 20),
          RotatedBox(
            quarterTurns: 1, // تدوير 90 درجة
            child: Container(
              width: 100,
              height: 50,
              color: Colors.orange,
              child: const Center(
                child: Text('Rotated', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
