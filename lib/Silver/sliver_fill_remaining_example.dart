import 'package:flutter/material.dart';

class SliverFillRemainingExample extends StatelessWidget {
  const SliverFillRemainingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: 80,
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text(
                  'Item ${index + 1}',
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            );
          }, childCount: 5),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Container(
            color: Colors.orange,
            child: const Center(
              child: Text(
                'Footer occupying remaining space',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
