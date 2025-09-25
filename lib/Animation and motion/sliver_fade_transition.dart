import 'package:flutter/material.dart';

class SliverFadeTransitionExample extends StatefulWidget {
  const SliverFadeTransitionExample({super.key});

  @override
  State<SliverFadeTransitionExample> createState() =>
      _SliverFadeTransitionExampleState();
}

class _SliverFadeTransitionExampleState
    extends State<SliverFadeTransitionExample>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          pinned: true,
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("SliverFadeTransition Demo"),
          ),
        ),

        SliverFadeTransition(
          opacity: _fadeAnimation,
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text("Item $index")),
              childCount: 15,
            ),
          ),
        ),
      ],
    );
  }
}
