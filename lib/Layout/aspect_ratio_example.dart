import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blueGrey[100],
        width: 300,
        child: const AspectRatio(
          aspectRatio: 16 / 9,
          child: ColoredBox(
            color: Colors.orange,
            child: Center(
              child: Text(
                "16:9 Aspect Ratio",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
