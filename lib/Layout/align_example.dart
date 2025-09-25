import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  const AlignExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blueGrey[100],
        child: const Align(
          alignment: Alignment.bottomRight,
          child: Icon(Icons.star, size: 50, color: Colors.orange),
        ),
      ),
    );
  }
}
