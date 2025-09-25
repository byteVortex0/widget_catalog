import 'package:flutter/material.dart';

class SliverFixedExtentListExample extends StatelessWidget {
  const SliverFixedExtentListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFixedExtentList(
          itemExtent: 80, // ارتفاع ثابت لكل عنصر
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text(
                  'Item ${index + 1}',
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            );
          }, childCount: 20),
        ),
      ],
    );
  }
}
