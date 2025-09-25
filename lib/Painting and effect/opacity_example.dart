import 'package:flutter/material.dart';

class OpacityExample extends StatelessWidget {
  const OpacityExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: const Center(
              child: Text('Background', style: TextStyle(color: Colors.white)),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.orange,
              child: const Center(
                child: Text(
                  'Semi-transparent',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
