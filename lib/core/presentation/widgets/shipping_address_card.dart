import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ShippingAddressCard extends StatelessWidget {
  final String fullName;
  final String address;
  final String actionLabel;
  final void Function()? onAction;
  final bool? selected;

  const ShippingAddressCard({
    super.key,
    required this.fullName,
    required this.address,
    required this.actionLabel,
    this.onAction,
    this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(23.w, 20.h, 5.h, 20.h),
      decoration: BoxDecoration(
        color: Palette.white,
        boxShadow: const [Palette.shadow3],
        borderRadius: BorderRadius.circular(Sizes.radiusMd),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(fullName, style: context.headlineSmallText),
              TextButton(
                onPressed: onAction,
                child: Text(actionLabel),
              ),
            ],
          ),
          7.h.sph,
          Text(
            address,
            style: const TextStyle(height: 1.5),
          ),
          if (selected != null) ...[
            14.h.sph,
            Row(
              children: [
                ReactiveCheckbox(formControl: FormControl()),
                10.w.spw,
                const Text("Use as the shipping address"),
              ],
            )
          ]
        ],
      ),
    );
  }
}
