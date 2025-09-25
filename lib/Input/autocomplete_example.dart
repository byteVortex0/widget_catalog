import 'package:flutter/material.dart';

class AutocompleteExample extends StatelessWidget {
  const AutocompleteExample({super.key});

  final List<String> _fruits = const [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Grapes',
    'Mango',
    'Orange',
    'Pineapple',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text.isEmpty) {
            return const Iterable<String>.empty();
          }
          return _fruits.where(
            (fruit) => fruit.toLowerCase().contains(
              textEditingValue.text.toLowerCase(),
            ),
          );
        },
        onSelected: (String selection) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('You selected: $selection')));
        },
        fieldViewBuilder: (context, controller, focusNode, onEditingComplete) {
          return TextField(
            controller: controller,
            focusNode: focusNode,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Type a fruit',
            ),
            onEditingComplete: onEditingComplete,
          );
        },
      ),
    );
  }
}
