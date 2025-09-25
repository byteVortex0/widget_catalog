import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliverRefreshExample extends StatefulWidget {
  const CupertinoSliverRefreshExample({super.key});

  @override
  State<CupertinoSliverRefreshExample> createState() =>
      _CupertinoSliverRefreshExampleState();
}

class _CupertinoSliverRefreshExampleState
    extends State<CupertinoSliverRefreshExample> {
  List<int> items = List.generate(15, (index) => index);

  Future<void> _handleRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      items.insertAll(0, List.generate(5, (index) => items.length + index));
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CupertinoSliverRefreshControl(onRefresh: _handleRefresh),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: 80,
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text(
                  'Item ${items[index]}',
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            );
          }, childCount: items.length),
        ),
      ],
    );
  }
}
