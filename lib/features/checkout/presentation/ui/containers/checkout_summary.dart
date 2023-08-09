import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/widgets/summary_section.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class CheckoutSummary extends StatelessWidget {
  const CheckoutSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return SummarySection(
      submitLabel: "Submit Order",
      onSubmit: () {},
      tiles: [
        ListTile(
          title: const Text("Order"),
          trailing: Text("250000 ${tr(context).egp}"),
        ),
        ListTile(
          title: const Text("Delivery"),
          trailing: Text("250000 ${tr(context).egp}"),
        ),
        ListTile(
          title: Text("Summary", style: context.labelLargeText!.copyWith(fontWeight: FontWeight.w500)),
          trailing: Text("250000 ${tr(context).egp}", style: context.headlineMediumText!.copyWith(fontSize: 18)),
        ),
      ],
    );
  }
}
