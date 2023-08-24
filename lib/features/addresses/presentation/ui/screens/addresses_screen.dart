import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/core/presentation/widgets/shipping_address_card.dart';
import 'package:ecommerce/features/addresses/presentation/ui/screens/new_address_screen.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AddressesScreen extends StatelessWidget {
  static const path = "/addresses";

  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar.basic(context, hasBackButton: true, title: Text(tr(context).shipping_addresses)),
      body: ListView.separated(
        padding: EdgeInsets.all(20.h),
        itemCount: 3,
        itemBuilder: (context, index) {
          return ShippingAddressCard(
            fullName: "John Doe",
            address: "3 Newbridge Court\nChino Hills, CA 91709, United States",
            actionLabel: tr(context).edit,
            onAction: () {},
            selected: true,
          );
        },
        separatorBuilder: (_, __) => 24.verticalSpace,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(NewAddressScreen.path);
        },
        backgroundColor: Palette.black,
        foregroundColor: Palette.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
