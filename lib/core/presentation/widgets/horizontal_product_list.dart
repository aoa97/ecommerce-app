import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/core/presentation/widgets/horizontal_product_card.dart';
import 'package:ecommerce/features/home/domain/entities/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HProductList extends StatelessWidget {
  const HProductList({super.key, required this.items});

  final List<Product> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const SizedBox();
    }

    return SizedBox(
      height: 260.h,
      child: ListView.separated(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (_, __) => Sizes.x12.spw,
        itemBuilder: (context, index) {
          final item = items[index];

          return HProductCard(
            product: item,
            onActionPressed: () {},
            onPressed: () {
              context.push("/products/1");
            },
          );
        },
      ),
    );
  }
}
