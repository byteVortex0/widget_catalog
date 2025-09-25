import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() =>
      _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState
    extends State<AnimatedPhysicalModelExample> {
  bool _isPressed = false;

  void _toggle() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _toggle,
        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
          elevation: _isPressed ? 12.0 : 2.0,
          color: _isPressed ? Colors.orange : Colors.blue,
          shadowColor: Colors.black,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(_isPressed ? 0 : 25),
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: const Text(
              "Tap me",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
