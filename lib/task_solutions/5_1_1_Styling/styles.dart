import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle headingTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle contentTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );

  static const TextStyle highlightedTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const double containerPadding = 20.0;
  static const double containerMarginTop = 20.0;
  static const double containerMarginHorizontal = 20.0;
  static const BoxDecoration coloredBoxDecoration = BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
}
