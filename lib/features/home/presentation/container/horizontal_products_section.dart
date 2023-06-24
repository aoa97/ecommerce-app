import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/features/home/domain/entities/product.dart';
import 'package:ecommerce/features/home/presentation/components/horizontal_product_card.dart';
import 'package:flutter/material.dart';

class HProductsSection extends StatelessWidget {
  final String title;
  final String subTitle;
  final void Function()? onViewAll;
  final List<Product> items;

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
          SizedBox(
            height: Sizes.x276,
            child: ListView.separated(
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              separatorBuilder: (_, __) => Sizes.x12.spw,
              itemBuilder: (context, index) {
                final item = items[index];

                return HProductCard(
                  image: item.image,
                  name: item.title,
                  brand: item.brand,
                  priceAfter: item.price,
                  priceBefore: item.priceBefore!,
                  discountPercentage: item.discountPercentage!,
                  rating: item.rating,
                  isFavorite: true,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
