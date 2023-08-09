import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/data/models/product_item_model.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({super.key, required this.item});

  final ProductItemModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push("/products/${item.id}");
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
        decoration: BoxDecoration(
          color: Palette.white,
          borderRadius: BorderRadius.circular(Sizes.radiusLg),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.network(item.image!),
              ),
            ),
            16.sph,
            Text(item.title, style: context.bodyMediumText),
            4.sph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${item.price} ${tr(context).egp}",
                  style: context.labelSmallText!.copyWith(color: Palette.black),
                ),
                if (item.discountPercentage != null)
                  Text(
                    "-${item.discountPercentage} %",
                    style: context.bodySmallText!.copyWith(color: Palette.success, fontWeight: FontWeight.w500),
                  ),
              ],
            ),
            8.sph,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.icons.starFilled.svg(width: 12.w),
                3.spw,
                Text(
                  item.rating.toString(),
                  style: context.bodySmallText!,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Assets.icons.heart.svg(width: 18.w),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
