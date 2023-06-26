import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/widgets/main_button.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartSummary extends StatelessWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(tr(context).total_amount, style: context.labelMediumText),
          trailing: Text("112 ${tr(context).egp}", style: context.headlineLargeText),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16.w, 8.w, 16.w, 20.w),
          child: MainButton(
            label: tr(context).checkout,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
