import 'package:ecommerce/core/application/service_locator.dart';
import 'package:ecommerce/core/data/models/product_item_model.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/core/presentation/widgets/horizontal_product_card.dart';
import 'package:ecommerce/features/favorites/data/models/favorites_product_adapter.dart';
import 'package:ecommerce/features/favorites/presentation/controller/favorites_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HProductList extends StatelessWidget {
  const HProductList({super.key, required this.items});

  final List<ProductItemModel> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const SizedBox();
    }

    return SizedBox(
      height: 267.h,
      child: ListView.separated(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (_, __) => Sizes.x12.spw,
        itemBuilder: (context, index) {
          final ProductItemModel item = items[index];

          return HProductCard(
            key: ValueKey(item.id),
            title: item.title,
            brand: item.brand,
            image: item.image!,
            rating: item.rating,
            price: item.price,
            priceBefore: item.priceBefore,
            discountPercentage: item.discountPercentage,
            onActionPressed: () {
              sl<FavoritesCubit>().addItem(FavoritesProductAdapter.adaptProductItem(item));
            },
            onPressed: () {
              context.push("/products/${item.id}");
            },
          );
        },
      ),
    );
  }
}
