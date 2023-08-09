import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingAddressSection extends StatelessWidget {
  const ShippingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Shipping Address", style: context.headlineSmallText!.copyWith(fontSize: 16)),
        20.sph,
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 23.w),
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
                  Text("John Doe", style: context.headlineSmallText),
                  TextButton(onPressed: () {}, child: const Text("Change")),
                ],
              ),
              7.sph,
              const Text(
                "3 Newbridge Court\nChino Hills, CA 91709, United States",
                style: TextStyle(height: 1.5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
