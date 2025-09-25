import 'package:flutter/material.dart';

class CustomSingleChildLayoutExample extends StatelessWidget {
  const CustomSingleChildLayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: CustomSingleChildLayout(
          delegate: _MyLayoutDelegate(),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.orange,
            child: const Center(
              child: Text(
                "Custom Layout",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MyLayoutDelegate extends SingleChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) {
    return Size(constraints.maxWidth, constraints.maxHeight);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(
      (size.width - childSize.width) / 2,
      (size.height - childSize.height) / 2,
    );
  }

  @override
  bool shouldRelayout(covariant _MyLayoutDelegate oldDelegate) => false;
}
