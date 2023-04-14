import 'package:flutter/material.dart';

class LabelTextStyle {
  static TextStyle? bodyText1(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 12.0,
        letterSpacing: 2.0);
  }
}
