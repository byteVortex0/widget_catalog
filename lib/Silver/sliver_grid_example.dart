import 'package:flutter/material.dart';

class SliverGridExample extends StatelessWidget {
  const SliverGridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text(
                  'Grid ${index + 1}',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            );
          }, childCount: 15),
        ),
      ],
    );
  }
}
