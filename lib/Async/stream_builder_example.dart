import 'dart:async';
import 'package:flutter/material.dart';

class StreamBuilderExample extends StatelessWidget {
  const StreamBuilderExample({super.key});

  Stream<int> counterStream() {
    return Stream.periodic(
      const Duration(seconds: 1),
      (count) => count + 1,
    ).take(10);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<int>(
        stream: counterStream(),
        initialData: 0,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          } else if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          } else {
            return Text(
              "Counter: ${snapshot.data}",
              style: const TextStyle(fontSize: 32, color: Colors.blue),
            );
          }
        },
      ),
    );
  }
}
