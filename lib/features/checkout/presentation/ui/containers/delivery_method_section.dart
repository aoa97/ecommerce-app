import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:flutter/material.dart';

class DeliveryMethodSection extends StatelessWidget {
  const DeliveryMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Delivery Method", style: context.headlineSmallText!.copyWith(fontSize: 16)),
        21.sph,
        const Text("Delivery Methods Options"),
      ],
    );
  }
}