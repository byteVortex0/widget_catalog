import 'package:flutter/material.dart';
import 'package:widget_catalog/Animation%20and%20motion/animation_demo.dart';
import 'package:widget_catalog/Layout/overflow_box_example.dart'
    show OverflowBoxExample;

import 'Input/autocomplete_example.dart';
import 'Interaction model/absorb_pointer_example.dart';
import 'Interaction model/drag_target_example.dart';
import 'Interaction model/draggable_scrollable_sheet_example.dart';
import 'Interaction model/interactive_viewer_example.dart';
import 'Interaction model/long_press_draggable_example.dart';
import 'Interaction model/scrollable_example.dart';
import 'Layout/aspect_ratio_example.dart';
import 'Layout/baseline_example.dart';
import 'Layout/custom_single_child_layout_example.dart';
import 'Layout/limited_box_example.dart';
import 'Painting and effect/backdrop_filter_example.dart';
import 'Styling/media_query_example.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Column(
        children: const [
          //Accessibility
          // Accessibility(),

          //Animation and motion
          // Expanded(child: AnimationDemo()),
          // AutocompleteExample(),
          // MediaQueryExample(),
          // AbsorbPointerExample(),
          // DragTargetExample(),
          // Expanded(child: DraggableScrollableSheetExample()),
          // InteractiveViewerExample(),
          // LongPressDraggableExample(),
          // Expanded(child: ScrollableExample()),
          // AspectRatioExample(),
          // BaselineExample(),
          // CustomSingleChildLayoutExample(),
          // LimitedBoxExample(),
          // OverflowBoxExample(),
          BackdropFilterExample(),
        ],
      ),
    );
  }
}
