import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.grey[200],
        width: 300,
        child: Wrap(
          spacing: 10,
          runSpacing: 15,
          alignment: WrapAlignment.start,
          children: List.generate(10, (index) {
            return Container(
              width: 80,
              height: 50,
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text(
                  'Box ${index + 1}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
