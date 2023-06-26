import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/assets/fonts.gen.dart';
import 'package:ecommerce/core/application/service_locator.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/core/presentation/widgets/main_body.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localeCubit = sl<LocaleCubit>();

    return Scaffold(
      appBar: MainAppBar.wide(
        context,
        centerTitle: true,
        title: Assets.icons.logoText.svg(),
      ),
      body: MainBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              tr(context).join_message,
              textAlign: TextAlign.center,
              style: context.displaySmallText!.copyWith(height: 1.5, fontWeight: FontWeight.w500),
            ),
            16.h.sph,
            ElevatedButton(
              onPressed: () {
                context.push("/auth");
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(Sizes.radius)),
                minimumSize: Size(0, 45.h),
              ),
              child: Text(tr(context).login),
            ),
            12.h.sph,
            OutlinedButton(
              onPressed: () {
                context.push("/register");
              },
              style: OutlinedButton.styleFrom(
                elevation: 0,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(Sizes.radius)),
                minimumSize: Size(0, 45.h),
              ),
              child: Text(tr(context).register),
            ),
            const Spacer(),
            ListTile(
              onTap: () {
                localeCubit.switchLocale();
              },
              title: Text(tr(context).language),
              trailing: Text(
                localeCubit.isArabic ? "English" : "العربية",
                style: context.labelMediumText?.copyWith(
                  color: Palette.primary,
                  fontFamily: localeCubit.isArabic ? FontFamily.metro : FontFamily.tajawal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
