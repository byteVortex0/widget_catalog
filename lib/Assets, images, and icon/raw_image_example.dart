import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class RawImageExample extends StatefulWidget {
  const RawImageExample({super.key});

  @override
  State<RawImageExample> createState() => _RawImageExampleState();
}

class _RawImageExampleState extends State<RawImageExample> {
  ui.Image? _image;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _loadImage() async {
    final data = await DefaultAssetBundle.of(
      context,
    ).load('assets/images/flutter.png');
    final codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
    final frame = await codec.getNextFrame();
    setState(() {
      _image = frame.image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _image == null
          ? const CircularProgressIndicator()
          : RawImage(
              image: _image,
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
    );
  }
}
