import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: const EdgeInsets.all(10),
      children: List.generate(9, (index) {
        return Container(
          color: Colors.primaries[index % Colors.primaries.length],
          child: Center(
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        );
      }),
    );
  }
}
