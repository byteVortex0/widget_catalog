import 'package:flutter/material.dart';

class DecoratedBoxExample extends StatelessWidget {
  const DecoratedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange, Colors.red],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Text(
            'DecoratedBox',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
