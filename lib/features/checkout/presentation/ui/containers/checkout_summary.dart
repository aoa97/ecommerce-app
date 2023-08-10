import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/widgets/summary_section.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class CheckoutSummary extends StatelessWidget {
  const CheckoutSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return SummarySection(
      submitLabel: tr(context).submit_order,
      onSubmit: () {},
      tiles: [
        ListTile(
          title: Text(tr(context).order),
          trailing: Text("250000 ${tr(context).egp}"),
        ),
        ListTile(
          title: Text(tr(context).delivery),
          trailing: Text("250000 ${tr(context).egp}"),
        ),
        ListTile(
          title: Text(tr(context).total, style: context.labelLargeText!.copyWith(fontWeight: FontWeight.w500)),
          trailing: Text("250000 ${tr(context).egp}", style: context.headlineMediumText!.copyWith(fontSize: 18)),
        ),
      ],
    );
  }
}
