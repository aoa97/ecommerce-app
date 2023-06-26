import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/core/presentation/widgets/main_icon_button.dart';
import 'package:ecommerce/core/presentation/widgets/main_label.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ProductActionType {
  favorite,
  cart,
}

class HProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String brand;
  final num priceAfter;
  final num priceBefore;
  final num discountPercentage;
  final num rating;
  final ProductActionType? actionType;
  final void Function()? onActionPressed;
  final void Function()? onPressed;
  final void Function()? onClose;

  const HProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.brand,
    required this.priceAfter,
    required this.priceBefore,
    required this.discountPercentage,
    required this.rating,
    this.actionType = ProductActionType.favorite,
    this.onActionPressed,
    this.onPressed,
    this.onClose,
  });

  _buildAction() {
    final isCart = actionType == ProductActionType.cart;

    return MainIconButton(
      padding: EdgeInsets.all(12.h),
      icon: isCart ? Assets.icons.bagLight.svg() : Assets.icons.favorite.svg(),
      fillColor: isCart ? Palette.primary : Palette.white,
      onPressed: onActionPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    final LocaleCubit localeCubit = context.read<LocaleCubit>();

    return GestureDetector(
      onTap: onPressed,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: Sizes.mqw / 3,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  child: MainChip(label: "-${discountPercentage.round()}%", color: Palette.success),
                ),
                if (onClose != null)
                  Positioned(
                    top: Sizes.x8,
                    right: Sizes.x8,
                    child: MainIconButton(
                      onPressed: onClose,
                      fillColor: Palette.black.withOpacity(.5),
                      icon: Assets.icons.close.svg(),
                    ),
                  ),
                Positioned(
                  bottom: -16.h,
                  right: localeCubit.isArabic ? null : 0,
                  left: localeCubit.isArabic ? 0 : null,
                  child: _buildAction(),
                )
              ],
            ),
            Sizes.x8.sph,
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
            4.h.sph,
            Text(brand, style: context.labelSmallText),
            4.h.sph,
            Text(
              name,
              style: context.headlineSmallText,
              overflow: TextOverflow.ellipsis,
            ),
            4.h.sph,
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "${priceBefore.round()} ${tr(context).egp}",
                    style: context.labelSmallText!.copyWith(
                      color: Palette.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  TextSpan(
                    text: " ${priceAfter.round()} ${tr(context).egp}",
                    style: context.headlineSmallText!.copyWith(color: Palette.success),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
