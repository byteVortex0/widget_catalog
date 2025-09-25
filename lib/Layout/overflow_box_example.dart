import 'package:flutter/material.dart';

class OverflowBoxExample extends StatelessWidget {
  const OverflowBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.grey[300],
        child: OverflowBox(
          maxWidth: 300,
          maxHeight: 300,
          minWidth: 50,
          minHeight: 50,
          alignment: Alignment.center,
          child: Container(
            width: 250,
            height: 250,
            color: Colors.blue,
            child: const Center(
              child: Text("OverflowBox", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
