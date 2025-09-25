import 'package:flutter/material.dart';

class DragTargetExample extends StatefulWidget {
  const DragTargetExample({super.key});

  @override
  State<DragTargetExample> createState() => _DragTargetExampleState();
}

class _DragTargetExampleState extends State<DragTargetExample> {
  Color _targetColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Draggable<Color>(
          data: Colors.blue,
          feedback: Container(
            width: 100,
            height: 100,
            color: Colors.blue.withValues(alpha: 0.5),
          ),
          childWhenDragging: Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            child: const Center(child: Text("Dragging")),
          ),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: const Center(child: Text("Drag Me")),
          ),
        ),
        const SizedBox(height: 50),
        DragTarget<Color>(
          onWillAcceptWithDetails: (details) {
            return details.data == Colors.blue;
          },
          onAcceptWithDetails: (details) {
            setState(() {
              _targetColor = details.data;
            });
          },
          onLeave: (data) {
            setState(() {
              _targetColor = Colors.grey;
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
