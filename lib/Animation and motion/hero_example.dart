import 'package:flutter/material.dart';

class HeroExample extends StatelessWidget {
  const HeroExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const HeroDetailsPage()),
          );
        },
        child: Hero(
          tag: "my-hero",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Icon(Icons.star, size: 100, color: Colors.orange),
          ),
        ),
      ),
    );
  }
}

class HeroDetailsPage extends StatelessWidget {
  const HeroDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero Details")),
      body: Column(
        children: [
          Hero(
            tag: "my-hero",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Icon(Icons.star, size: 300, color: Colors.orange),
            ),
          ),
        ],
      ),
    );
  }
}
