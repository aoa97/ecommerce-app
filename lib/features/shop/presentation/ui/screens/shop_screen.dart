import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/core/presentation/widgets/main_body.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  static const path = "/layout/shop";

  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar.basic(
        context,
        title: const Text("Categories"),
      ),
      body: const MainBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("ShopScreen"),
          ],
        ),
      ),
    );
  }
}
