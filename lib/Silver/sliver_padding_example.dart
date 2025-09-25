import 'package:flutter/material.dart';

class SliverPaddingExample extends StatelessWidget {
  const SliverPaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                height: 80,
                margin: const EdgeInsets.symmetric(vertical: 5),
                color: Colors.primaries[index % Colors.primaries.length],
                child: Center(
                  child: Text(
                    'Item ${index + 1}',
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              );
            }, childCount: 10),
          ),
        ),
      ],
    );
  }
}
