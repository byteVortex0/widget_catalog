import 'package:flutter/material.dart';

class ClipRectExample extends StatelessWidget {
  const ClipRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRect(
        child: Align(
          alignment: Alignment.topLeft,
          widthFactor: 0.5, // قص 50% من العرض
          heightFactor: 0.5, // قص 50% من الارتفاع
          child: Image.network(
            'https://images.unsplash.com/photo-1612832021012-96e091af5f60?auto=format&fit=crop&w=800&q=80',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
