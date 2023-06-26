import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/application/service_locator.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/helpers.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainAppBar {
  static basic(
    BuildContext context, {
    required String title,
    bool hasBackButton = false,
  }) {
    return AppBar(
      leading: elseNull(
        condition: hasBackButton,
        child: IconButton(
          onPressed: context.pop,
          icon: sl<LocaleCubit>().isArabic ? Assets.icons.backRtl.svg() : Assets.icons.back.svg(),
        ),
      ),
      title: Text(title),
    );
  }

  static wide(
    BuildContext context, {
    required Widget title,
    bool hasBackButton = false,
    List<Widget>? actions,
  }) {
    return AppBar(
      centerTitle: false,
      toolbarHeight: Sizes.mqh * .12,
      actions: actions,
      leading: elseNull(
        condition: hasBackButton,
        child: IconButton(
          onPressed: context.pop,
          icon: sl<LocaleCubit>().isArabic ? Assets.icons.backRtl.svg() : Assets.icons.back.svg(),
        ),
      ),
      title: title,
      titleTextStyle: context.displayLargeText,
    );
  }
}
