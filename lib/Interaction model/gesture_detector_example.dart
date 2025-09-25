import 'package:flutter/material.dart';

class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({super.key});

  @override
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  Color _boxColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _boxColor = Colors.red;
          });
        },
        onDoubleTap: () {
          setState(() {
            _boxColor = Colors.green;
          });
        },
        onLongPress: () {
          setState(() {
            _boxColor = Colors.orange;
          });
        },
        onPanUpdate: (details) {
          setState(() {
            _boxColor = Colors.purple;
          });
        },
        child: Container(
          width: 150,
          height: 150,
          color: _boxColor,
          child: const Center(
            child: Text(
              "Tap, Double Tap, Long Press or Drag",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
