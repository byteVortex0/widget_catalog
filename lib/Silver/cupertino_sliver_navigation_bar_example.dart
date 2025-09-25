import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliverNavigationBarExample extends StatelessWidget {
  const CupertinoSliverNavigationBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CupertinoSliverNavigationBar(
          largeTitle: Text('iOS SliverNavBar'),
          middle: Text('Title'),
          trailing: Icon(CupertinoIcons.add),
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
