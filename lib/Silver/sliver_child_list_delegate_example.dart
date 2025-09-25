import 'package:flutter/material.dart';

class SliverChildListDelegateExample extends StatelessWidget {
  const SliverChildListDelegateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              height: 100,
              color: Colors.red,
              child: const Center(
                child: Text('Item 1', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: const Center(
                child: Text('Item 2', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text('Item 3', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              height: 100,
              color: Colors.orange,
              child: const Center(
                child: Text('Item 4', style: TextStyle(color: Colors.white)),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
