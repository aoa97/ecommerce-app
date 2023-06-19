import 'dart:ui';

import 'package:flutter/material.dart';

final _mediaQuery = MediaQueryData.fromView(PlatformDispatcher.instance.implicitView!);

abstract class Sizes {
  static final double mqw = _mediaQuery.size.width;
  static final double mqh = _mediaQuery.size.height;
  static final double statusBarHeight = _mediaQuery.padding.top;
  static final double homeIndicatorHeight = _mediaQuery.viewPadding.bottom;

  // Padding
  static double paddingX4 = mqh * .0050;
  static double paddingX8 = paddingX4 * 2;
  static double paddingX12 = paddingX4 * 3;
  static double paddingX16 = paddingX4 * 4;
  static double paddingX24 = paddingX4 * 6;
  static double paddingX32 = paddingX4 * 8;
  static double paddingX40 = paddingX4 * 10;
  static double paddingX48 = paddingX4 * 12;

  // Radius
  static double radius = 4;
  static double radiusLg = 24;
}
