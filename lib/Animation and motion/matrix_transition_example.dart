import 'package:flutter/material.dart';
import 'dart:math' as math;

class MatrixTransitionExample extends StatefulWidget {
  const MatrixTransitionExample({super.key});

  @override
  State<MatrixTransitionExample> createState() =>
      _MatrixTransitionExampleState();
}

class _MatrixTransitionExampleState extends State<MatrixTransitionExample>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Matrix4 _onTransform(double t) {
    final m = Matrix4.identity();

    m.translate(50.0 * t, -50.0 * t);

    m.rotateZ(t * math.pi / 4);

    final scale = 1.0 + 0.5 * t;
    m.scale(scale, scale, 1.0);
    return m;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MatrixTransition(
        animation: _animation,
        onTransform: _onTransform,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: const Icon(Icons.star, size: 50, color: Colors.white),
        ),
      ),
    );
  }
}
