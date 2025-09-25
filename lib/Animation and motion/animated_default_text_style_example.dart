import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleExample extends StatefulWidget {
  const AnimatedDefaultTextStyleExample({super.key});

  @override
  State<AnimatedDefaultTextStyleExample> createState() =>
      _AnimatedDefaultTextStyleExampleState();
}

class _AnimatedDefaultTextStyleExampleState
    extends State<AnimatedDefaultTextStyleExample> {
  bool _big = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _big = !_big;
          });
        },
        child: AnimatedDefaultTextStyle(
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          style: TextStyle(
            fontSize: _big ? 40 : 20,
            color: _big ? Colors.orange : Colors.blue,
            fontWeight: _big ? FontWeight.bold : FontWeight.normal,
          ),
          child: const Text("Tap Me"),
        ),
      ),
    );
  }
}
