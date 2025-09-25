import 'package:flutter/material.dart';

class SliverPersistentHeaderExample extends StatelessWidget {
  const SliverPersistentHeaderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          floating: false,
          delegate: MyHeaderDelegate(),
        ),
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
          }, childCount: 15),
        ),
      ],
    );
  }
}

class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.orange,
      alignment: Alignment.center,
      child: Text(
        'Persistent Header',
        style: TextStyle(color: Colors.white, fontSize: 30 - shrinkOffset / 10),
      ),
    );
  }

  @override
  double get maxExtent => 100;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
