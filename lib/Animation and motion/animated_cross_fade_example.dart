import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({super.key});

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _showFirst = !_showFirst;
          });
        },
        child: AnimatedCrossFade(
          firstChild: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              "First",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          secondChild: Container(
            width: 200,
            height: 200,
            color: Colors.orange,
            alignment: Alignment.center,
            child: const Text(
              "Second",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          crossFadeState: _showFirst
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(seconds: 2),
        ),
      ),
    );
  }
}
