import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainIconButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget icon;
  final bool? disabled;
  final Color? fillColor;
  final Color? shadowColor;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;

  const MainIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.disabled = false,
    this.fillColor,
    this.iconSize,
    this.padding,
    this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(boxShadow: [Palette.shadow]),
      child: IconButton.filled(
        onPressed: disabled! ? null : onPressed,
        style: IconButton.styleFrom(
          backgroundColor: fillColor ?? Palette.white,
          highlightColor: shadowColor ?? Palette.shadow.color,
          disabledBackgroundColor: Palette.grey.withOpacity(.1),
          padding: padding ?? EdgeInsets.all(4.h),
          minimumSize: const Size(0, 0),
        ),
        icon: SizedBox.square(
          dimension: iconSize,
          child: icon,
        ),
      ),
    );
  }
}
