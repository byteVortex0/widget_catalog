import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  const IconExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.home, color: Colors.blue, size: 40),
          SizedBox(width: 20),
          Icon(Icons.favorite, color: Colors.red, size: 40),
          SizedBox(width: 20),
          Icon(Icons.settings, color: Colors.green, size: 40),
        ],
      ),
    );
  }
}
