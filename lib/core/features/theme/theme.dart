import 'package:ecommerce/assets/fonts.gen.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          minimumSize: Size(double.infinity, 48.h),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          textStyle: _baseTextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.resolveWith(
            (states) => _baseTextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) {
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
      checkboxTheme: const CheckboxThemeData(
        fillColor: MaterialStatePropertyAll(Palette.black),
        side: BorderSide(color: Palette.grey, width: 2),
        visualDensity: VisualDensity(horizontal: -4, vertical: -4),
      ),
      textTheme: TextTheme(
        displayLarge: _baseTextStyle(fontWeight: FontWeight.w700, fontSize: 34.sp),
        displayMedium: _baseTextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
        displaySmall: _baseTextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
        headlineLarge: _baseTextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
        headlineMedium: _baseTextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
        headlineSmall: _baseTextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
        labelLarge: _baseTextStyle(fontSize: 16.sp, color: Palette.grey, fontWeight: FontWeight.w400),
        labelMedium: _baseTextStyle(fontSize: 14.sp, color: Palette.grey, fontWeight: FontWeight.w400),
        labelSmall: _baseTextStyle(fontSize: 12.sp, color: Palette.grey, fontWeight: FontWeight.w400),
        bodyLarge: _baseTextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
        bodyMedium: _baseTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
        bodySmall: _baseTextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400),
      ),
    );
  }

  TextStyle _baseTextStyle({double? fontSize, FontWeight? fontWeight, Color? color}) {
    return TextStyle(
      height: 0,
      fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
      fontSize: fontSize ?? 16.sp,
      fontWeight: fontWeight,
      color: color ?? Palette.black,
    );
  }
}
