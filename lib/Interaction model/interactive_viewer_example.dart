import 'package:flutter/material.dart';

class InteractiveViewerExample extends StatelessWidget {
  const InteractiveViewerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(50),
        minScale: 0.5,
        maxScale: 3.0,
        panEnabled: true,
        scaleEnabled: true,
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blueGrey,
          child: const Center(
            child: Text(
              "Pinch to Zoom & Drag",
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
