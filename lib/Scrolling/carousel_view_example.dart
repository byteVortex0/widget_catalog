import 'package:flutter/material.dart';

class CarouselViewExample extends StatefulWidget {
  const CarouselViewExample({super.key});

  @override
  State<CarouselViewExample> createState() => _CarouselViewExampleState();
}

class _CarouselViewExampleState extends State<CarouselViewExample> {
  final CarouselController controller = CarouselController();
  final double height = 300;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselView.weighted(
      controller: controller,
      flexWeights: const <int>[1, 2, 5, 2, 1],
      itemSnapping: true,
      children: List<Widget>.generate(20, (int index) {
        return Image.network(
          'https://picsum.photos/500/800?image=$index',
          fit: BoxFit.cover,
        );
      }),
    );
  }
}
