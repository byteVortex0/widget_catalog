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
import 'Layout/flow_example.dart';
import 'Layout/indexed_stack_example.dart';
import 'Layout/limited_box_example.dart';
import 'Layout/table_example.dart';
import 'Layout/wrap_example.dart';
import 'Painting and effect/backdrop_filter_example.dart';
import 'Painting and effect/clip_oval_example.dart';
import 'Painting and effect/clip_path_example.dart';
import 'Painting and effect/fractional_translation_example.dart';
import 'Scrolling/carousel_view_example.dart';
import 'Scrolling/nested_scroll_view_example.dart';
import 'Scrolling/notification_listener_example.dart';
import 'Scrolling/scroll_configuration_example.dart';
import 'Silver/cupertino_sliver_navigation_bar_example.dart';
import 'Silver/cupertino_sliver_refresh_example.dart';
import 'Silver/sliver_child_list_delegate_example.dart';
import 'Silver/sliver_persistent_header_example.dart';
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
          // Expanded(child: BackdropFilterExample()),
          // ClipOvalExample(),
          // ClipPathExample(),
          // FractionalTranslationExample(),
          // Expanded(child: NestedScrollViewExample()),
          // Expanded(child: CarouselViewExample()),
          // Expanded(child: ScrollConfigurationExample()),
          // Expanded(child: NotificationListenerExample()),
          // Expanded(child: SliverPersistentHeaderExample()),
          // Expanded(child: SliverChildListDelegateExample()),
          // Expanded(child: CupertinoSliverRefreshExample()),
          // Expanded(child: CupertinoSliverNavigationBarExample()),
          // WrapExample(),
          // TableExample(),
          // IndexedStackExample(),
          // Expanded(child: FlowExample()),
        ],
      ),
    );
  }
}
