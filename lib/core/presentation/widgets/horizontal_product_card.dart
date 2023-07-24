import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/core/presentation/widgets/main_icon_button.dart';
import 'package:ecommerce/core/presentation/widgets/main_label.dart';
import 'package:ecommerce/core/presentation/widgets/main_rating.dart';
import 'package:ecommerce/features/home/data/models/product_model.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HProductCard extends StatelessWidget {
  final ProductModel product;
  final ProductActionType? actionType;
  final void Function()? onActionPressed;
  final void Function()? onPressed;
  final void Function()? onClose;

  const HProductCard({
    super.key,
    this.actionType = ProductActionType.favorite,
    this.onActionPressed,
    this.onPressed,
    this.onClose,
    required this.product,
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
                    product.image,
                    height: Sizes.x184,
                  ),
                ),
                if (product.priceBefore != null)
                  Positioned(
                    top: Sizes.x8,
                    left: Sizes.x8,
                    child: MainChip(label: "-${product.discountPercentage?.round()}%", color: Palette.success),
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
            MainRating(rating: product.rating),
            1.w.spw,
            4.h.sph,
            Text(product.brand, style: context.labelSmallText),
            4.h.sph,
            Text(
              product.title,
              style: context.headlineSmallText,
              overflow: TextOverflow.ellipsis,
            ),
            4.h.sph,
            Text.rich(
              TextSpan(
                children: [
                  if (product.priceBefore != null)
                    TextSpan(
                      text: "${product.priceBefore!.round()} ${tr(context).egp} ",
                      style: context.labelSmallText!.copyWith(
                        color: Palette.grey,
                        decoration: TextDecoration.lineThrough,
                        fontSize: 12.sp,
                      ),
                    ),
                  TextSpan(
                    text: "${product.price.round()} ${tr(context).egp}",
                    style: context.headlineSmallText!.copyWith(
                      color: Palette.success,
                      fontSize: 12.sp,
                    ),
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
