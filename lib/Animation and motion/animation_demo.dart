import 'package:flutter/material.dart';
import 'package:widget_catalog/Animation%20and%20motion/animated_cross_fade_example.dart'
    show AnimatedCrossFadeExample;

import 'animated_builder_example.dart';
import 'animated_list.dart';
import 'animated_modal_barrier_example.dart';
import 'animated_physical_model_example.dart';
import 'animated_widget_example.dart';
import 'hero_example.dart';
import 'matrix_transition_example.dart';
import 'positioned_transition_example.dart';
import 'relative_positioned_transition.dart';
import 'rotation_transition.dart';
import 'size_transition.dart';
import 'slide_transition.dart';
import 'sliver_fade_transition.dart';

class AnimationDemo extends StatelessWidget {
  const AnimationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Align Transition
        // AlignTransitionDemo(),
        // AnimatedAlignDemo(),
        // AnimatedBuilderExample(),
        // AnimatedCrossFadeExample(),
        // Expanded(child: AnimatedListExample()),
        // Expanded(child: AnimatedModalBarrierExample()),
        // AnimatedPhysicalModelExample(),
        // AnimatedWidgetExample(),
        // Expanded(child: HeroExample()),
        // MatrixTransitionExample(),
        // PositionedTransitionExample(),
        // RelativePositionedTransitionExample(),
        // RotationTransitionExample(),
        // SizeTransitionExample(),
        // SlideTransitionExample(),
        // Expanded(child: SliverFadeTransitionExample()),
      ],
    );
  }
}
