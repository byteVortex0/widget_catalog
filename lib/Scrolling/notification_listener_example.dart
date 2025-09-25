import 'package:flutter/material.dart';

class NotificationListenerExample extends StatefulWidget {
  const NotificationListenerExample({super.key});

  @override
  State<NotificationListenerExample> createState() =>
      _NotificationListenerExampleState();
}

class _NotificationListenerExampleState
    extends State<NotificationListenerExample> {
  double scrollPosition = 0;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        setState(() {
          scrollPosition = notification.metrics.pixels;
        });
        return false;
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.orange,
            child: Text(
              'Scroll Position: ${scrollPosition.toStringAsFixed(1)}',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: 30,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.all(20),
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: Text(
                    'Item ${index + 1}',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
