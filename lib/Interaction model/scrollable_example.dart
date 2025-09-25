import 'package:flutter/material.dart';

class ScrollableExample extends StatefulWidget {
  const ScrollableExample({super.key});

  @override
  State<ScrollableExample> createState() => _ScrollableExampleState();
}

class _ScrollableExampleState extends State<ScrollableExample> {
  final ScrollController _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: Scrollable(
          axisDirection: AxisDirection.down,
          controller: _controller,
          viewportBuilder: (context, position) {
            return Viewport(
              axisDirection: AxisDirection.down,
              offset: position,
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                      height: 50,
                      margin: const EdgeInsets.all(5),
                      color: Colors.blue[(index + 1) * 100],
                      child: Center(child: Text("Item ${index + 1}")),
                    ),
                    childCount: 10,
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
