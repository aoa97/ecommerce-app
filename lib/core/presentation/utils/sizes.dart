import 'dart:ui';

import 'package:flutter/material.dart';

final _mediaQuery = MediaQueryData.fromView(PlatformDispatcher.instance.implicitView!);

abstract class Sizes {
  static final double mqw = _mediaQuery.size.width;
  static final double mqh = _mediaQuery.size.height;
  static final double statusBarHeight = _mediaQuery.padding.top;
  static final double homeIndicatorHeight = _mediaQuery.viewPadding.bottom;

  // Padding
  static double x4 = mqh * .0050;
  static double x2 = x4 / 2;
  static double x8 = x4 * 2;
  static double x12 = x4 * 3;
  static double x16 = x4 * 4;
  static double x20 = x4 * 5;
  static double x24 = x4 * 6;
  static double x32 = x4 * 8;
  static double x40 = x4 * 10;
  static double x48 = x4 * 12;
  static double x56 = x4 * 14;
  static double x148 = x4 * 37;
  static double x184 = x4 * 46;
  static double x196 = x4 * 49;
  static double x276 = x4 * 69;

  // Radius
  static double radius = 4;
  static double radiusMd = 8;
  static double radiusLg = 24;
}
