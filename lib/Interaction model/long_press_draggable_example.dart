import 'package:flutter/material.dart';

class LongPressDraggableExample extends StatefulWidget {
  const LongPressDraggableExample({super.key});

  @override
  State<LongPressDraggableExample> createState() =>
      _LongPressDraggableExampleState();
}

class _LongPressDraggableExampleState extends State<LongPressDraggableExample> {
  Color _targetColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LongPressDraggable<Color>(
          data: Colors.blue,
          feedback: Container(
            width: 100,
            height: 100,
            color: Colors.blue.withOpacity(0.5),
            child: const Center(child: Text("Dragging")),
          ),
          childWhenDragging: Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            child: const Center(child: Text("Original")),
          ),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: const Center(child: Text("Long Press Me")),
          ),
        ),
        const SizedBox(height: 50),
        DragTarget<Color>(
          onWillAcceptWithDetails: (data) => data == Colors.blue,
          onAcceptWithDetails: (data) {
            setState(() {
              _targetColor = data.data;
            });
          },
          builder: (context, candidateData, rejectedData) {
            return Container(
              width: 150,
              height: 150,
              color: candidateData.isNotEmpty ? Colors.green : _targetColor,
              child: const Center(child: Text("Drop Here")),
            );
          },
        ),
      ],
    );
  }
}
