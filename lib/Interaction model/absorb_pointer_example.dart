import 'package:flutter/material.dart';

class AbsorbPointerExample extends StatefulWidget {
  const AbsorbPointerExample({super.key});

  @override
  State<AbsorbPointerExample> createState() => _AbsorbPointerExampleState();
}

class _AbsorbPointerExampleState extends State<AbsorbPointerExample> {
  bool _isAbsorbing = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SwitchListTile(
          title: const Text("Disable Buttons"),
          value: _isAbsorbing,
          onChanged: (val) {
            setState(() {
              _isAbsorbing = val;
            });
          },
        ),
        const SizedBox(height: 20),
        AbsorbPointer(
          absorbing: _isAbsorbing,
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
