import 'package:flutter/material.dart';

class ScrollConfigurationExample extends StatelessWidget {
  const ScrollConfigurationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoGlowScrollBehavior(),
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(20),
            color: Colors.primaries[index % Colors.primaries.length],
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          );
        },
      ),
    );
  }
}

// ScrollBehavior لإزالة الـ glow effect
class NoGlowScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
