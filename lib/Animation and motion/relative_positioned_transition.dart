import 'package:flutter/material.dart';

class RelativePositionedTransitionExample extends StatefulWidget {
  const RelativePositionedTransitionExample({super.key});

  @override
  State<RelativePositionedTransitionExample> createState() =>
      _RelativePositionedTransitionExampleState();
}

class _RelativePositionedTransitionExampleState
    extends State<RelativePositionedTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Rect?> _rectAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _rectAnimation = RectTween(
      begin: const Rect.fromLTWH(
        0.1,
        0.1,
        0.2,
        0.2,
      ), // 10% x, 10% y, 20% width, 20% height
      end: const Rect.fromLTWH(
        0.6,
        0.6,
        0.3,
        0.3,
      ), // 60% x, 60% y, 30% width, 30% height
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Container(color: Colors.green.shade50),
            RelativePositionedTransition(
              size: constraints.biggest,
              rect: _rectAnimation,
              child: Container(
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "Relative",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
