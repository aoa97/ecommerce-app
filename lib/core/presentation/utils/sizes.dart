import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final _mediaQuery = MediaQueryData.fromView(PlatformDispatcher.instance.implicitView!);

abstract class Sizes {
  static final double mqw = _mediaQuery.size.width;
  static final double mqh = _mediaQuery.size.height;
  static final double statusBarHeight = _mediaQuery.padding.top;
  static final double homeIndicatorHeight = _mediaQuery.viewPadding.bottom;

  // Sizes Used
  static double x2 = 2.h;
  static double x4 = 4.h;
  static double x8 = 8.h;
  static double x12 = 12.h;
  static double x16 = 16.h;
  static double x20 = 20.h;
  static double x24 = 24.h;
  static double x28 = 28.h;
  static double x32 = 32.h;
  static double x36 = 36.h;
  static double x40 = 40.h;
  static double x48 = 48.h;
  static double x56 = 56.h;
  static double x148 = 148.h;
  static double x184 = 184.h;
  static double x196 = 196.h;
  static double x276 = 276.h;

  // Radius
  static double radius = 4;
  static double radiusMd = 8;
  static double radiusLg = 24;
}
