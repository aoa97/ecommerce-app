import 'package:ecommerce/assets/fonts.gen.dart';
import 'package:ecommerce/core/presentation/utils/colors.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        fontFamily: FontFamily.metro,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        colorScheme: _colorScheme,
        textTheme: _textTheme,
        appBarTheme: _appBarTheme,
        elevatedButtonTheme: _elevatedButtonTheme,
        textButtonTheme: _textButtonTheme,
        inputDecorationTheme: _inputDecorationTheme,
      );
}

final _elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 5,
    shadowColor: const Color.fromRGBO(211, 38, 38, 0.25),
    backgroundColor: Palette.primary,
    foregroundColor: Palette.white,
    textStyle: _textTheme.headlineSmall!.copyWith(letterSpacing: 1),
    minimumSize: Size(double.infinity, Sizes.paddingX48),
  ),
);

final _textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    overlayColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return Colors.grey.withOpacity(0.3);
        }
        return Colors.grey.withOpacity(0.3);
      },
    ),
  ),
);

final _appBarTheme = AppBarTheme(
  toolbarHeight: Sizes.mqh * .15,
  backgroundColor: Palette.background,
  titleTextStyle: _textTheme.displayLarge,
  elevation: 0,
);

final _colorScheme = ColorScheme.fromSeed(
  seedColor: Palette.primary,
  background: Palette.background,
  error: Palette.error,
);

const _inputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: Colors.white,
  border: InputBorder.none,
  labelStyle: TextStyle(color: Palette.grey),
);

const _textTheme = TextTheme(
  displayLarge: TextStyle(
    fontFamily: FontFamily.metro,
    fontWeight: FontWeight.w700,
    fontSize: 34,
    color: Palette.black,
  ),
  displayMedium: TextStyle(
    fontFamily: FontFamily.metro,
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: Palette.black,
  ),
  displaySmall: TextStyle(
    fontFamily: FontFamily.metro,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Palette.black,
  ),
  headlineMedium: TextStyle(
    fontFamily: FontFamily.metro,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Palette.black,
  ),
  headlineSmall: TextStyle(
    fontFamily: FontFamily.metro,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Palette.black,
  ),
  bodyLarge: TextStyle(
    fontFamily: FontFamily.metro,
    fontSize: 16,
    color: Palette.black,
  ),
  bodyMedium: TextStyle(
    fontFamily: FontFamily.metro,
    fontSize: 14,
    color: Palette.black,
  ),
  bodySmall: TextStyle(
    fontFamily: FontFamily.metro,
    fontSize: 11,
    color: Palette.grey,
  ),
);
