import 'package:flutter/material.dart';

class IntrinsicHeightExample extends StatelessWidget {
  const IntrinsicHeightExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  width: 100,
                  color: Colors.blue,
                  child: const Center(
                    child: Text("Box 1", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  width: 50,
                  height: 150,
                  color: Colors.orange,
                  child: const Center(
                    child: Text("Box 2", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  width: 80,
                  color: Colors.green,
                  child: const Center(
                    child: Text("Box 3", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
