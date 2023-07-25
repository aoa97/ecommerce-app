import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/features/cart/presentation/containers/cart_list.dart';
import 'package:ecommerce/features/cart/presentation/containers/cart_summary.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar.wide(context, title: Text(tr(context).my_cart)),
      body: const CartList(),
      bottomNavigationBar: const CartSummary(),
    );
  }
}
