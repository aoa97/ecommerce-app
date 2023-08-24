import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/features/checkout/presentation/ui/containers/checkout_summary.dart';
import 'package:ecommerce/features/checkout/presentation/ui/containers/delivery_method_section.dart';
import 'package:ecommerce/features/checkout/presentation/ui/containers/payment_details_section.dart';
import 'package:ecommerce/features/checkout/presentation/ui/containers/shipping_address_section.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutScreen extends StatelessWidget {
  static const path = "/checkout";

  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar.basic(context, hasBackButton: true, title: Text(tr(context).checkout)),
      body: Padding(
        padding: const EdgeInsets.all(20).h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ShippingAddressSection(),
            57.verticalSpace,
            const PaymentDetailsSection(),
            57.verticalSpace,
            const DeliveryMethodSection()
          ],
        ),
      ),
      bottomNavigationBar: const CheckoutSummary(),
    );
  }
}
