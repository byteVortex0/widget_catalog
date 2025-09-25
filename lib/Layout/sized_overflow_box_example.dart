import 'package:flutter/material.dart';

class SizedOverflowBoxExample extends StatelessWidget {
  const SizedOverflowBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey[300],
        child: SizedOverflowBox(
          size: const Size(200, 200),
          alignment: Alignment.center,
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
            child: const Center(
              child: Text(
                "SizedOverflowBox",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
