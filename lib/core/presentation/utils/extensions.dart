import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  double get mqw => MediaQuery.of(this).size.width;
  double get mqh => MediaQuery.of(this).size.height;
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
}

extension TextStyleExtension on BuildContext {
  TextStyle? get displayLargeText => Theme.of(this).textTheme.displayLarge;
  TextStyle? get displayMediumText => Theme.of(this).textTheme.displayMedium;
  TextStyle? get displaySmallText => Theme.of(this).textTheme.displaySmall;
  TextStyle? get headlineLargeText => Theme.of(this).textTheme.headlineLarge;
  TextStyle? get headlineMediumText => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get headlineSmallText => Theme.of(this).textTheme.headlineSmall;
  TextStyle? get bodyLargeText => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodyMediumText => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodySmallText => Theme.of(this).textTheme.bodySmall;
  TextStyle? get labelSmallText => Theme.of(this).textTheme.labelSmall;
  TextStyle? get labelMediumText => Theme.of(this).textTheme.labelMedium;
  TextStyle? get labelLargeText => Theme.of(this).textTheme.labelLarge;
  Color? get primaryColor => Theme.of(this).primaryColor;
}
