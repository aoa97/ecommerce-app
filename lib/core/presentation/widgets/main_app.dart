import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/features/theme/theme.dart';
import 'package:ecommerce/core/presentation/models/flavor_config.dart';
import 'package:ecommerce/core/presentation/router/app_router.dart';
import 'package:ecommerce/core/presentation/services/service_locator.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
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
          final appTheme = sl<AppTheme>();
          final localeCubit = context.watch<LocaleCubit>();

          return MaterialApp.router(
            debugShowCheckedModeBanner: flavor.type == Flavor.development,
            title: flavor.appTitle,
            localizationsDelegates: L10n.localizationsDelegates,
            supportedLocales: L10n.supportedLocales,
            locale: localeCubit.val,
            theme: appTheme.light(),
            routerConfig: appRouter,
          );
        },
      ),
    );
  }
}
