import 'package:flutter/material.dart';

class RefreshIndicatorExample extends StatefulWidget {
  const RefreshIndicatorExample({super.key});

  @override
  State<RefreshIndicatorExample> createState() =>
      _RefreshIndicatorExampleState();
}

class _RefreshIndicatorExampleState extends State<RefreshIndicatorExample> {
  List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  Future<void> _refresh() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      items = List.generate(items.length + 1, (index) => 'Item ${index + 1}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refresh,
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(20),
            color: Colors.primaries[index % Colors.primaries.length],
            child: Text(
              items[index],
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          );
        },
      ),
    );
  }
}
