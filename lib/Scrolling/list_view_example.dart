import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.all(20),
          color: Colors.primaries[index % Colors.primaries.length],
          child: Text(
            'Item ${index + 1}',
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        );
      },
    );
  }
}
