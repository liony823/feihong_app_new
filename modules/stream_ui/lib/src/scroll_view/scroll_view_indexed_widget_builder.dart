import 'package:flutter/material.dart';

/// Signature for a function that creates a widget for a given index, e.g., in a
/// list, grid.
///
/// Used by [ChannelListView], [MessageSearchListView]
/// and [UserListView].
typedef ScrollViewIndexedWidgetBuilder<ItemType,
        WidgetType extends Widget>
    = Widget Function(
  BuildContext context,
  List<ItemType> items,
  int index,
  WidgetType defaultWidget,
);
