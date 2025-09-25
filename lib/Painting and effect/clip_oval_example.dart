import 'package:flutter/material.dart';

class ClipOvalExample extends StatelessWidget {
  const ClipOvalExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Container(
          color: Colors.orange,
          width: 150,
          height: 150,
          child: const Center(
            child: Text(
              'Oval',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
