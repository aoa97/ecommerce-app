import 'package:ecommerce/assets/fonts.gen.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/presentation/models/flavor_config.dart';
import 'package:ecommerce/core/presentation/router/app_router.dart';
import 'package:ecommerce/core/presentation/services/service_locator.dart';
import 'package:ecommerce/core/presentation/utils/colors.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainApp extends StatelessWidget {
  final FlavorConfig flavor;

  const MainApp({super.key, required this.flavor});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocaleCubit>(create: (_) => sl<LocaleCubit>()),
      ],
      child: Builder(
        builder: (context) {
          final localeCubit = context.watch<LocaleCubit>();

          return MaterialApp.router(
            debugShowCheckedModeBanner: flavor.type == Flavor.development,
            title: flavor.appTitle,
            localizationsDelegates: L10n.localizationsDelegates,
            supportedLocales: L10n.supportedLocales,
            locale: localeCubit.val,
            theme: ThemeData(
              useMaterial3: true,
              fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              colorScheme: ColorScheme.fromSeed(
                seedColor: Palette.primary,
                background: Palette.background,
                error: Palette.error,
              ),
              appBarTheme: AppBarTheme(
                toolbarHeight: Sizes.mqh * .15,
                backgroundColor: Palette.background,
                titleTextStyle: TextStyle(
                  fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                  color: Palette.black,
                ),
                elevation: 0,
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shadowColor: const Color.fromRGBO(211, 38, 38, 0.25),
                  backgroundColor: Palette.primary,
                  foregroundColor: Palette.white,
                  textStyle: TextStyle(
                    fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Palette.black,
                  ),
                  minimumSize: Size(double.infinity, Sizes.paddingX48),
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
                displayLarge: TextStyle(
                  fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                  color: Palette.black,
                ),
                displayMedium: TextStyle(
                  fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Palette.black,
                ),
                displaySmall: TextStyle(
                  fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Palette.black,
                ),
                headlineMedium: TextStyle(
                  fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Palette.black,
                ),
                headlineSmall: TextStyle(
                  fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Palette.black,
                ),
                bodyLarge: TextStyle(
                  fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
                  fontSize: 16,
                  color: Palette.black,
                ),
                bodyMedium: TextStyle(
                  fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
                  fontSize: 14,
                  color: Palette.black,
                ),
                bodySmall: TextStyle(
                  fontFamily: localeCubit.isArabic ? FontFamily.tajawal : FontFamily.metro,
                  fontSize: 11,
                  color: Palette.grey,
                ),
              ),
            ),
            routerConfig: appRouter,
          );
        },
      ),
    );
  }
}
