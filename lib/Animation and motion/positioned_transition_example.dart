import 'package:flutter/material.dart';

class PositionedTransitionExample extends StatefulWidget {
  const PositionedTransitionExample({super.key});

  @override
  State<PositionedTransitionExample> createState() =>
      _PositionedTransitionExampleState();
}

class _PositionedTransitionExampleState
    extends State<PositionedTransitionExample>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<RelativeRect> _rectAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);

    _rectAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(10, 10, 200, 200),
      end: const RelativeRect.fromLTRB(200, 400, 10, 10),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 500,
        child: Stack(
          children: [
            Container(color: Colors.grey.shade200),
            PositionedTransition(
              rect: _rectAnimation,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
                child: const Icon(Icons.star, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
