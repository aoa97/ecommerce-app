import 'package:ecommerce/core/data/models/product_item_model.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/core/presentation/widgets/horizontal_product_list.dart';
import 'package:flutter/material.dart';

class HProductsSection extends StatelessWidget {
  final String title;
  final String subTitle;
  final void Function()? onViewAll;
  final List<ProductItemModel> items;

  const HProductsSection({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onViewAll,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: Sizes.x16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: context.displayLargeText),
              Padding(
                padding: EdgeInsetsDirectional.only(end: Sizes.x16),
                child: TextButton(
                  onPressed: onViewAll,
                  child: const Text("View All"),
                ),
              ),
            ],
          ),
          Sizes.x2.sph,
          Text(subTitle, style: context.labelSmallText),
          Sizes.x20.sph,
          HProductList(items: items),
        ],
      ),
    );
  }
}
