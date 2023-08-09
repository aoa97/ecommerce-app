import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar.basic(context, hasBackButton: true, title: const Text("Shipping Addresses")),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Address Card"),
          ],
        ),
      ),
    );
  }
}
