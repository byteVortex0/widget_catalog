import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 100,
        color: Colors.grey[300],
        child: FittedBox(
          fit: BoxFit.contain,
          alignment: Alignment.center,
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
            child: const Center(
              child: Text(
                "FittedBox",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
