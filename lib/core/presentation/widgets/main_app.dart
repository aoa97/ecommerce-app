import 'package:ecommerce/assets/fonts.gen.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/presentation/models/flavor_config.dart';
import 'package:ecommerce/core/presentation/utils/colors.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/features/home/presentation/screens/home_screen.dart';
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
        BlocProvider<LocaleCubit>(create: (_) => LocaleCubit()), // TODO: ServiceLocator Instance
      ],
      child: Builder(
        builder: (context) {
          final currentLocale = context.select((LocaleCubit locale) => locale.val);

          return MaterialApp(
            debugShowCheckedModeBanner: flavor.type == Flavor.development,
            title: flavor.appTitle,
            localizationsDelegates: L10n.localizationsDelegates,
            supportedLocales: L10n.supportedLocales,
            locale: currentLocale,
            theme: ThemeData(
              useMaterial3: true,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              fontFamily: FontFamily.metro,
              colorScheme: ColorScheme.fromSeed(
                seedColor: Palette.primary,
                background: Palette.background,
                error: Palette.error,
              ),
            ),
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
