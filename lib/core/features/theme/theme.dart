import 'package:ecommerce/assets/fonts.gen.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final LocaleCubit localeCubit;

  AppTheme({required this.localeCubit});

  ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Palette.primary,
        background: Palette.background,
        error: Palette.error,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Palette.white,
        centerTitle: true,
        titleTextStyle: _baseTextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shadowColor: const Color.fromRGBO(211, 38, 38, 0.25),
          backgroundColor: Palette.primary,
          foregroundColor: Palette.white,
          textStyle: _baseTextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          minimumSize: Size(double.infinity, Sizes.x48),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
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
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none,
        labelStyle: TextStyle(color: Palette.grey),
      ),
      textTheme: TextTheme(
        displayLarge: _baseTextStyle(fontWeight: FontWeight.w700, fontSize: 34),
        displayMedium: _baseTextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        displaySmall: _baseTextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        headlineMedium: _baseTextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        headlineSmall: _baseTextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        bodyLarge: _baseTextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        bodyMedium: _baseTextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        bodySmall: _baseTextStyle(fontSize: 11, color: Palette.grey, fontWeight: FontWeight.w400),
      ),
    );
  }

  TextStyle _baseTextStyle({double? fontSize, FontWeight? fontWeight, Color? color}) {
    return TextStyle(
      fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? Palette.black,
    );
  }
}
