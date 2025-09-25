import 'package:flutter/material.dart';

class SingleChildScrollViewExample extends StatelessWidget {
  const SingleChildScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: List.generate(20, (index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(20),
            color: Colors.primaries[index % Colors.primaries.length],
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          );
        }),
      ),
    );
  }
}
