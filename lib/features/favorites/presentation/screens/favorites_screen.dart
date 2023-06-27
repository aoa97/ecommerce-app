import 'package:ecommerce/assets/dummy_data.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/core/presentation/widgets/horizontal_product_card.dart';
import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/core/presentation/widgets/main_body.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = DummyData.products;

    return Scaffold(
      appBar: MainAppBar.wide(context, title: Text(tr(context).favorites)),
      body: MainBody(
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.67,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h,
          ),
          itemBuilder: (context, index) {
            return HProductCard(
              product: products[index],
              actionType: ProductActionType.cart,
              onActionPressed: () {},
              onPressed: () {},
              onClose: () {},
            );
          },
        ),
      ),
    );
  }
}
