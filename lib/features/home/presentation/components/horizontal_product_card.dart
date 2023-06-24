import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String brand;
  final num priceAfter;
  final num priceBefore;
  final num discountPercentage;
  final num rating;
  final bool isFavorite;

  const HProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.brand,
    required this.priceAfter,
    required this.priceBefore,
    required this.discountPercentage,
    required this.rating,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: Sizes.mqw / 3,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Sizes.radiusMd),
                child: Image.network(
                  image,
                  height: Sizes.x184,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: Sizes.x8,
                left: Sizes.x8,
                child: Container(
                  width: Sizes.x40,
                  height: Sizes.x24,
                  decoration: BoxDecoration(
                    color: Palette.success,
                    borderRadius: BorderRadius.circular(Sizes.radiusLg),
                  ),
                  child: Center(
                    child: Text(
                      "-${discountPercentage.round()}%",
                      style: context.headlineSmallText!.copyWith(fontSize: 10.sp, color: Palette.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -Sizes.x16,
                right: 0,
                child: InkWell(
                  child: Container(
                    decoration: const ShapeDecoration(
                      shape: OvalBorder(),
                      color: Colors.white,
                      shadows: [Palette.shadow],
                    ),
                    clipBehavior: Clip.antiAlias,
                    width: Sizes.x36,
                    height: Sizes.x36,
                    child: UnconstrainedBox(
                      child: isFavorite ? Assets.icons.favoriteFilled.svg() : Assets.icons.favorite.svg(),
                    ),
                  ),
                ),
              )
            ],
          ),
          Sizes.x8.sph,
          Row(
            children: [
              RatingBar(
                itemSize: 13,
                ignoreGestures: true,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                initialRating: rating.toDouble(),
                direction: Axis.horizontal,
                itemCount: 5,
                ratingWidget: RatingWidget(
                  full: Assets.icons.starFilled.svg(),
                  half: Assets.icons.starFilled.svg(),
                  empty: Assets.icons.star.svg(),
                ),
                onRatingUpdate: (rating) {},
              ),
              1.w.spw,
              // Text("($reviewsCount)", style: context.labelSmallText!.copyWith(fontSize: 10.sp)),
            ],
          ),
          Sizes.x4.sph,
          Text(brand, style: context.labelSmallText),
          Sizes.x2.sph,
          Text(
            name,
            style: context.headlineSmallText,
            overflow: TextOverflow.ellipsis,
          ),
          Sizes.x2.sph,
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "${priceBefore.round()}\$",
                  style: context.headlineSmallText!.copyWith(
                    color: Palette.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: "${priceAfter.round()}\$",
                  style: context.headlineSmallText!.copyWith(color: Palette.success),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
