import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/widgets/main_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveCounter extends ReactiveFormField<int, int> {
  final void Function(int)? onChanged;

  ReactiveCounter({
    super.key,
    super.formControl,
    int? maxValue,
    MainAxisAlignment? mainAxisAlignment,
    this.onChanged,
  }) : super(
          builder: (field) => Builder(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.fromLTRB(11.h, 0, 0, 11.h),
                child: Row(
                  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
                  children: [
                    MainIconButton(
                      disabled: field.value == 1,
                      icon: Assets.icons.minus.svg(),
                      iconSize: 20.w,
                      onPressed: () {
                        field.control.value = field.value! - 1;
                        if (onChanged != null) {
                          onChanged(field.value!);
                        }
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text(field.control.value.toString(), style: context.headlineMediumText),
                    ),
                    MainIconButton(
                      disabled: maxValue != null ? field.value == maxValue : false,
                      icon: Assets.icons.plus.svg(),
                      iconSize: 20.w,
                      onPressed: () {
                        field.control.value = field.value! + 1;
                        if (onChanged != null) {
                          onChanged(field.value!);
                        }
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        );
}
