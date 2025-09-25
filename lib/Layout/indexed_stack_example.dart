import 'package:flutter/material.dart';

class IndexedStackExample extends StatefulWidget {
  const IndexedStackExample({super.key});

  @override
  State<IndexedStackExample> createState() => _IndexedStackExampleState();
}

class _IndexedStackExampleState extends State<IndexedStackExample> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IndexedStack(
            index: currentIndex,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Red',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Green',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Blue',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Text('Show ${index + 1}'),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
