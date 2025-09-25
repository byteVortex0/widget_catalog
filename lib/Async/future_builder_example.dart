import 'package:flutter/material.dart';

class FutureBuilderExample extends StatelessWidget {
  const FutureBuilderExample({super.key});

  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 3));
    return "Hello from Future!";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<String>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          } else if (snapshot.hasData) {
            return Text(
              snapshot.data!,
              style: const TextStyle(fontSize: 24, color: Colors.green),
            );
          } else {
            return const Text("No data");
          }
        },
      ),
    );
  }
}
