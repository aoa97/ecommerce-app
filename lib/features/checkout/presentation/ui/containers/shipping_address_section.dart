import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/widgets/shipping_address_card.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShippingAddressSection extends StatelessWidget {
  const ShippingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tr(context).shipping_address, style: context.headlineSmallText!.copyWith(fontSize: 16)),
        20.sph,
        ShippingAddressCard(
          fullName: "John Doe",
          address: "3 Newbridge Court\nChino Hills, CA 91709, United States",
          actionLabel: tr(context).change,
          onAction: () => context.push("/addresses"),
        ),
      ],
    );
  }
}
