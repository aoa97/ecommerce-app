import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveCounter extends ReactiveFormField<int, int> {
  ReactiveCounter({
    super.key,
    super.formControl,
    int? maxValue,
    MainAxisAlignment? mainAxisAlignment,
  }) : super(
          builder: (field) => Builder(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.fromLTRB(11.h, 0, 0, 11.h),
                child: Row(
                  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
                  children: [
                    _CounterChip(
                      disabled: field.value == 1,
                      icon: Assets.icons.minus.svg(),
                      onPressed: () => field.control.value = field.value! - 1,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text(field.control.value.toString(), style: context.headlineMediumText),
                    ),
                    _CounterChip(
                      disabled: maxValue != null ? field.value == maxValue : false,
                      icon: Assets.icons.plus.svg(),
                      onPressed: () => field.control.value = field.value! + 1,
                    ),
                  ],
                ),
              );
            },
          ),
        );
}

class _CounterChip extends StatelessWidget {
  final void Function()? onPressed;
  final SvgPicture icon;
  final bool? disabled;

  const _CounterChip({
    required this.onPressed,
    required this.icon,
    required this.disabled,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(boxShadow: [Palette.shadow]),
      child: IconButton.filled(
        onPressed: disabled! ? null : onPressed,
        style: IconButton.styleFrom(
          backgroundColor: Palette.white,
          highlightColor: Palette.shadow.color,
          disabledBackgroundColor: Palette.grey.withOpacity(.1),
          padding: EdgeInsets.all(4.h),
          minimumSize: const Size(0, 0),
        ),
        icon: SizedBox.square(
          dimension: 20.w,
          child: icon,
        ),
      ),
    );
  }
}
