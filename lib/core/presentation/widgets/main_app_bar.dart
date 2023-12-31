import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/application/service_locator.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/helpers.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MainAppBar {
  static basic(
    BuildContext context, {
    Widget? title,
    bool hasBackButton = false,
    List<Widget>? actions,
  }) {
    return AppBar(
      actions: actions,
      automaticallyImplyLeading: false,
      leading: elseNull(
        condition: hasBackButton,
        child: IconButton(
          onPressed: context.pop,
          icon: sl<LocaleCubit>().isArabic ? Assets.icons.backRtl.svg() : Assets.icons.back.svg(),
        ),
      ),
      title: title,
    );
  }

  static wide(
    BuildContext context, {
    required Widget title,
    bool hasBackButton = false,
    bool centerTitle = false,
    List<Widget>? actions,
    Color? backgroundColor,
  }) {
    return AppBar(
      backgroundColor: backgroundColor ?? Palette.background,
      toolbarHeight: .10.sh,
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
      centerTitle: centerTitle,
    );
  }
}
