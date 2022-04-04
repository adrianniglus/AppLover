import 'package:flutter/material.dart';

abstract class AppTheme implements AppColorsBase {}

abstract class AppColorsBase {
  late Color grey;
  late Color green;
  late Color white;
  late Color transparent;
  late Color red;
}

class AppStandardColors {
  static const Color grey = Color(0xFF534C5F);
  static const Color white = Color(0xFFFFFFFF);
  static const Color green = Color(0xFF1DE278);
  static const Color red = Colors.red;
  static const Color transparent = Colors.transparent;
}
