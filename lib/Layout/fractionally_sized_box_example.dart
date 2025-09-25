import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        color: Colors.grey[300],
        child: FractionallySizedBox(
          widthFactor: 0.5, // نصف عرض الأب
          heightFactor: 0.75, // 3/4 ارتفاع الأب
          alignment: Alignment.center,
          child: Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                "FractionallySizedBox",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
