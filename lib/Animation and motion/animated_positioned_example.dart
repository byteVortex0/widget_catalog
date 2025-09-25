import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool _moved = false;

  void _toggle() {
    setState(() {
      _moved = !_moved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: ElevatedButton(
            onPressed: _toggle,
            child: Text(_moved ? "return" : "move"),
          ),
        ),

        AnimatedPositioned(
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          left: _moved ? 200 : 20,
          top: _moved ? 400 : 100,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: const Center(
              child: Text("Box", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ],
    );
  }
}
