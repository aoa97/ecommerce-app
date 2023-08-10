import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class PaymentDetailsSection extends StatelessWidget {
  const PaymentDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Payment", style: context.headlineSmallText!.copyWith(fontSize: 16)),
            TextButton(onPressed: () {}, child: Text(tr(context).change)),
          ],
        ),
        17.sph,
        const Text("Payment Details"),
      ],
    );
  }
}
