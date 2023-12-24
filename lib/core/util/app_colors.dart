import 'package:flutter/material.dart';

class AppColor {
  static const Color colorPrimary = Color(0xFF6c5ce7);
  static const Color colorSecondary = Color(0xFF191919);
  static const Color colorRed = Colors.red;
}

extension AppContext on BuildContext {
  Size get size => MediaQuery.sizeOf(this);
  double get width => size.width;
  double get height => size.height;
}