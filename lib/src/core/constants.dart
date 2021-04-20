import 'package:flutter/material.dart';

import '../tips/1/tip1.dart';
import '../tips/2/tip2.dart';

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
  FlutterTip(
    title: 'On state change show dialog or call function',
    navigate: (context) => Navigator.push(
      context,
      Tip2Page.route(),
    ),
  ),
];
