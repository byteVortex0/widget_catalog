import 'package:flutter/material.dart';

class IgnorePointerExample extends StatefulWidget {
  const IgnorePointerExample({super.key});

  @override
  State<IgnorePointerExample> createState() => _IgnorePointerExampleState();
}

class _IgnorePointerExampleState extends State<IgnorePointerExample> {
  bool _isIgnoring = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SwitchListTile(
          title: const Text("Disable Buttons"),
          value: _isIgnoring,
          onChanged: (val) {
            setState(() {
              _isIgnoring = val;
            });
          },
        ),
        const SizedBox(height: 20),
        IgnorePointer(
          ignoring: _isIgnoring,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Button 1 Clicked")),
                  );
                },
                child: const Text("Button 1"),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Button 2 Clicked")),
                  );
                },
                child: const Text("Button 2"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
