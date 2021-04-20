import 'package:flutter/material.dart';

import '../tips/1/flutter_tip1.dart';

class FlutterTip {
  FlutterTip({
    required this.title,
    required this.navigate,
  });
  final String title;
  final Function(BuildContext) navigate;
}

final kFlutterTips = <FlutterTip>[
  FlutterTip(
    title:
        'How to select a specific variable from the state to rebuild the widget',
    navigate: (context) => Navigator.push(
      context,
      Tip1Page.route(),
    ),
  ),
];
