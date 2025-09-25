import 'package:flutter/material.dart';

class BaselineExample extends StatelessWidget {
  const BaselineExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Baseline(
            baseline: 50,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
          SizedBox(width: 10),
          Baseline(
            baseline: 50,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              "World",
              style: TextStyle(fontSize: 40, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
