import 'package:flutter/material.dart';

class ClipPathExample extends StatelessWidget {
  const ClipPathExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath(
        clipper: WaveClipper(),
        child: Container(
          color: Colors.blue,
          width: 300,
          height: 150,
          child: const Center(
            child: Text(
              'Wave Shape',
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

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(
      size.width / 4,
      size.height,
      size.width / 2,
      size.height - 30,
    );
    path.quadraticBezierTo(
      3 / 4 * size.width,
      size.height - 60,
      size.width,
      size.height - 30,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
