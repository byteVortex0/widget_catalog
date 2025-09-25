import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformExample extends StatelessWidget {
  const TransformExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(math.pi / 6), // تدوير 30 درجة
        child: Container(
          width: 150,
          height: 150,
          color: Colors.blue,
          child: const Center(
            child: Text("Transformed", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
