import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/application/service_locator.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_state.dart';
import 'package:ecommerce/core/features/theme/theme.dart';
import 'package:ecommerce/core/presentation/models/flavor_config.dart';
import 'package:ecommerce/core/presentation/router/app_router.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_cubit.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class MainApp extends HookWidget {
  final FlavorConfig flavor;

  const MainApp({super.key, required this.flavor});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocaleCubit>(create: (_) => sl<LocaleCubit>()),
        BlocProvider<CartCubit>(create: (_) => sl<CartCubit>()),
      ],
      child: Builder(
        builder: (context) {
          final appTheme = sl<AppTheme>();
          final localeCubit = context.watch<LocaleCubit>();

          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            builder: (context, __) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.sp),
              child: MaterialApp.router(
                debugShowCheckedModeBanner: flavor.type == Flavor.development,
                title: flavor.appTitle,
                localizationsDelegates: L10n.localizationsDelegates,
                supportedLocales: L10n.supportedLocales,
                locale: localeCubit.val,
                theme: appTheme.light(),
                routerConfig: appRouter,
                builder: (context, child) => ModalProgressHUD(
                  opacity: .6,
                  color: Palette.black,
                  progressIndicator: Assets.lottie.loaderTwo.lottie(width: 220.w),
                  inAsyncCall: localeCubit.state is SwitchLocaleLoadingState,
                  child: child!,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
