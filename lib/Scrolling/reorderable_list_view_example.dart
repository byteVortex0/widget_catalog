import 'package:flutter/material.dart';

class ReorderableListViewExample extends StatefulWidget {
  const ReorderableListViewExample({super.key});

  @override
  State<ReorderableListViewExample> createState() =>
      _ReorderableListViewExampleState();
}

class _ReorderableListViewExampleState
    extends State<ReorderableListViewExample> {
  final List<String> items = List.generate(5, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      padding: const EdgeInsets.all(10),
      children: [
        for (final item in items)
          ListTile(
            key: ValueKey(item),
            title: Text(item),
            tileColor: Colors
                .primaries[items.indexOf(item) % Colors.primaries.length]
                .withValues(alpha: 0.5),
          ),
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (newIndex > oldIndex) newIndex -= 1;
          final item = items.removeAt(oldIndex);
          items.insert(newIndex, item);
        });
      },
    );
  }
}
