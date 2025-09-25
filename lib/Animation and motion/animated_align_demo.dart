import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({super.key});

  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  bool _moved = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _moved = !_moved;
        });
      },
      child: Container(
        color: Colors.grey[300],
        child: AnimatedAlign(
          alignment: _moved ? Alignment.bottomRight : Alignment.topLeft,
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: const FlutterLogo(size: 100),
        ),
      ),
    );
  }
}
