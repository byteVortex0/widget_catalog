import 'package:flutter/material.dart';

class NestedScrollViewExample extends StatelessWidget {
  const NestedScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          pinned: true,
          expandedHeight: 150,
          backgroundColor: Colors.orange,
          flexibleSpace: const FlexibleSpaceBar(
            title: Text('NestedScrollView Example'),
            centerTitle: true,
          ),
        ),
      ],
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            height: 80,
            margin: const EdgeInsets.symmetric(vertical: 5),
            color: Colors.primaries[index % Colors.primaries.length],
            alignment: Alignment.center,
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          );
        },
      ),
    );
  }
}
