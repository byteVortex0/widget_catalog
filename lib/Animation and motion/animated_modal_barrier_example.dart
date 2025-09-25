import 'package:flutter/material.dart';

class AnimatedModalBarrierExample extends StatefulWidget {
  const AnimatedModalBarrierExample({super.key});

  @override
  State<AnimatedModalBarrierExample> createState() =>
      _AnimatedModalBarrierExampleState();
}

class _AnimatedModalBarrierExampleState
    extends State<AnimatedModalBarrierExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  bool _isDialogVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _colorAnimation = ColorTween(
      begin: Colors.transparent,
      end: Colors.black54,
    ).animate(_controller);
  }

  void _showDialog() {
    setState(() => _isDialogVisible = true);
    _controller.forward();
  }

  void _hideDialog() {
    _controller.reverse().then((_) {
      if (mounted) {
        setState(() => _isDialogVisible = false);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, size: 100, color: Colors.orange),
              SizedBox(height: 20),
              Text("Hi"),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _showDialog,
                child: const Text("Open Dialog"),
              ),
            ],
          ),
        ),

        if (_isDialogVisible) ...[
          AnimatedModalBarrier(color: _colorAnimation, dismissible: true),
          Center(
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.all(20),
                width: 250,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Way to use AnimatedModalBarrier",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _hideDialog,
                      child: const Text("Close"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
