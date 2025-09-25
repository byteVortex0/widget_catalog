import 'package:flutter/material.dart';

class CustomMultiChildLayoutExample extends StatelessWidget {
  const CustomMultiChildLayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.grey[200],
        child: CustomMultiChildLayout(
          delegate: MyLayoutDelegate(),
          children: [
            LayoutId(
              id: 'topLeft',
              child: Container(width: 50, height: 50, color: Colors.red),
            ),
            LayoutId(
              id: 'topRight',
              child: Container(width: 50, height: 50, color: Colors.green),
            ),
            LayoutId(
              id: 'bottomLeft',
              child: Container(width: 50, height: 50, color: Colors.blue),
            ),
            LayoutId(
              id: 'bottomRight',
              child: Container(width: 50, height: 50, color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}

class MyLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    if (hasChild('topLeft')) {
      final childSize = layoutChild('topLeft', BoxConstraints.loose(size));
      positionChild('topLeft', Offset(0, 0));
    }
    if (hasChild('topRight')) {
      final childSize = layoutChild('topRight', BoxConstraints.loose(size));
      positionChild('topRight', Offset(size.width - childSize.width, 0));
    }
    if (hasChild('bottomLeft')) {
      final childSize = layoutChild('bottomLeft', BoxConstraints.loose(size));
      positionChild('bottomLeft', Offset(0, size.height - childSize.height));
    }
    if (hasChild('bottomRight')) {
      final childSize = layoutChild('bottomRight', BoxConstraints.loose(size));
      positionChild(
        'bottomRight',
        Offset(size.width - childSize.width, size.height - childSize.height),
      );
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => false;
}
