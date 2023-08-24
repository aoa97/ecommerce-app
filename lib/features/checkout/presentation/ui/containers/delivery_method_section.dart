import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryMethodSection extends StatelessWidget {
  const DeliveryMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tr(context).delivery_method, style: context.headlineSmallText!.copyWith(fontSize: 16)),
        21.verticalSpace,
        const Text("Delivery Methods Options"),
      ],
    );
  }
}
