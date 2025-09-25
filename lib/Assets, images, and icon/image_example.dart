import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/images/flutter.png',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),

          Image.network(
            'https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
            width: 150,
            height: 150,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 20),

          Image.asset(
            'assets/images/flutter.png',
            width: 150,
            height: 150,
            color: Colors.blue.withValues(alpha: 0.5),
            colorBlendMode: BlendMode.darken,
          ),
        ],
      ),
    );
  }
}
