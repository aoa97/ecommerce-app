import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/core/presentation/widgets/reactive_fields/reactive_counter.dart';
import 'package:ecommerce/features/cart/data/models/cart_product_model.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CartItem extends StatelessWidget {
  final CartProductModel item;
  final void Function() onDeletePressed;
  final void Function() onSavePressed;

  const CartItem({
    super.key,
    required this.item,
    required this.onDeletePressed,
    required this.onSavePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(Sizes.radiusMd),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 104.h,
                    width: double.infinity,
                    child: Image.network(
                      item.image!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const SizedBox(),
                    ),
                  ),
                  const Spacer(),
                  ReactiveCounter(
                    formControl: FormControl(value: item.qty),
                    maxValue: item.stock,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(11.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.brand, style: context.labelSmallText),
                    4.h.sph,
                    Text(
                      item.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.headlineSmallText,
                    ),
                    8.h.sph,
                    Text(
                      "${item.price} ${tr(context).egp}",
                      style: context.headlineMediumText!,
                    ),
                    if (item.priceBefore != null || item.discountPercentage != null) 8.h.sph,
                    Text.rich(
                      TextSpan(
                        children: [
                          if (item.priceBefore != null)
                            TextSpan(
                              text: "${item.priceBefore} ${tr(context).egp}",
                              style: context.labelSmallText!.copyWith(
                                color: Palette.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          if (item.discountPercentage != null)
                            TextSpan(
                              text: " ${item.discountPercentage}% ${tr(context).discount}",
                              style: context.labelSmallText!.copyWith(color: Palette.success),
                            )
                        ],
                      ),
                    ),
                    16.h.sph,
                    Theme(
                      data: Theme.of(context).copyWith(
                        filledButtonTheme: FilledButtonThemeData(
                          style: FilledButton.styleFrom(
                            backgroundColor: Palette.grey.withOpacity(.1),
                            textStyle: context.bodyMediumText!.copyWith(fontSize: 12.sp),
                            shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(Sizes.radius)),
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            minimumSize: Size(0, 32.h),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FilledButton.tonal(onPressed: onDeletePressed, child: Text(tr(context).delete)),
                          8.w.spw,
                          FilledButton.tonal(onPressed: onSavePressed, child: Text(tr(context).save_for_later)),
                          8.w.spw,
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
