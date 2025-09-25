import 'package:flutter/material.dart';

class Accessibility extends StatelessWidget {
  const Accessibility({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Hello World"),

        const SizedBox(height: 20),

        ExcludeSemantics(
          child: const Icon(Icons.star, size: 50, color: Colors.orange),
        ),

        const SizedBox(height: 20),

        // for reader
        Semantics(
          label: "Orange star icon",
          child: const Icon(Icons.star, size: 50, color: Colors.orange),
        ),

        MergeSemantics(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Email"),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  errorText: "Invalid email",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
