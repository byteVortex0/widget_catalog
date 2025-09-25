import 'package:flutter/material.dart';

class FlutterLogoExample extends StatelessWidget {
  const FlutterLogoExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FlutterLogo(size: 100, style: FlutterLogoStyle.markOnly),
          SizedBox(height: 20),
          FlutterLogo(
            size: 150,
            style: FlutterLogoStyle.horizontal,
            textColor: Colors.blue,
          ),
          SizedBox(height: 20),
          FlutterLogo(size: 120, style: FlutterLogoStyle.stacked),
        ],
      ),
    );
  }
}
