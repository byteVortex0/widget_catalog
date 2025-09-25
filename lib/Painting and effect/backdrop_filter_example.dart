import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class BackdropFilterExample extends StatelessWidget {
  const BackdropFilterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropGroup(
      child: ListView.builder(
        itemCount: 60,
        itemBuilder: (BuildContext context, int index) {
          return ClipRect(
            child: BackdropFilter.grouped(
              filter: ui.ImageFilter.blur(sigmaX: 40, sigmaY: 40),
              child: Container(
                color: Colors.black.withOpacity(0.2),
                height: 200,
                child: const Text('Blur item'),
              ),
            ),
          );
        },
      ),
    );
  }
}
