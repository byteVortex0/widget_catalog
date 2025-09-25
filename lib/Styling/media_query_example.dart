import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Screen Width: ${media.size.width.toStringAsFixed(0)}"),
        Text("Screen Height: ${media.size.height.toStringAsFixed(0)}"),
        Text("Orientation: ${media.orientation}"),
        Text("Device Pixel Ratio: ${media.devicePixelRatio}"),
        Text("Padding Top: ${media.padding.top}"),
        Text("Text Scale Factor: ${media.textScaler}"),
      ],
    );
  }
}
