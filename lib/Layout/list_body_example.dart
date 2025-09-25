import 'package:flutter/material.dart';

class ListBodyExample extends StatelessWidget {
  const ListBodyExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: ListBody(
          mainAxis: Axis.vertical,
          children: [
            Container(
              height: 80,
              color: Colors.red,
              child: const Center(
                child: Text('Item 1', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 80,
              color: Colors.green,
              child: const Center(
                child: Text('Item 2', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 80,
              color: Colors.blue,
              child: const Center(
                child: Text('Item 3', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
