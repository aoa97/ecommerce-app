import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/features/home/presentation/components/horizontal_product_card.dart';
import 'package:flutter/material.dart';

class HProductsSection extends StatelessWidget {
  final String title;
  final String subTitle;
  final void Function()? onViewAll;
  final List items;

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
              TextButton(
                onPressed: onViewAll,
                child: const Text("View All"),
              ),
            ],
          ),
          Sizes.x2.sph,
          Text(subTitle, style: context.bodySmallText),
          Sizes.x20.sph,
          SizedBox(
            height: Sizes.x276,
            child: ListView.separated(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              separatorBuilder: (_, __) => Sizes.x12.spw,
              itemBuilder: (context, index) => const HProductCard(
                image: "https://picsum.photos/148/184",
                name: "MacBook Pro 2018aaa MacBook Pro 2018",
                brand: "Apple",
                priceAfter: 900,
                priceBefore: 1000,
                discountPercentage: 10,
                rating: 4,
                reviewsCount: 30,
                isFavorite: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
