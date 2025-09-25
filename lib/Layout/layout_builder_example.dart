import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.blueGrey[100],
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Text(
                  'Max Width: ${constraints.maxWidth.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Max Height: ${constraints.maxHeight.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 18),
                ),
                Container(
                  width: constraints.maxWidth * 0.5,
                  height: constraints.maxHeight * 0.5,
                  color: Colors.orange,
                  child: const Center(
                    child: Text(
                      '50% of parent',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
