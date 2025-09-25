import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatelessWidget {
  const CustomScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 150,
          backgroundColor: Colors.orange,
          flexibleSpace: const FlexibleSpaceBar(
            title: Text('CustomScrollView Example'),
            centerTitle: true,
          ),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: 80,
              color: Colors.primaries[index % Colors.primaries.length],
              alignment: Alignment.center,
              child: Text(
                'Item ${index + 1}',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            );
          }, childCount: 10),
        ),
      ],
    );
  }
}
