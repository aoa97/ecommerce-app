import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainChip extends StatelessWidget {
  final String label;
  final Color? color;

  const MainChip({
    super.key,
    required this.label,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.x40,
      height: Sizes.x24,
      decoration: BoxDecoration(
        color: color ?? Palette.primary,
        borderRadius: BorderRadius.circular(Sizes.radiusLg),
      ),
      child: Center(
        child: Text(
          label,
          style: context.headlineSmallText!.copyWith(fontSize: 10.sp, color: Palette.white),
        ),
      ),
    );
  }
}
