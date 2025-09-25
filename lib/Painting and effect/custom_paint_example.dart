import 'package:flutter/material.dart';

class CustomPaintExample extends StatelessWidget {
  const CustomPaintExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(size: const Size(200, 200), painter: CirclePainter()),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 80, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
