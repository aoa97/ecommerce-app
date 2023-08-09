import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/widgets/main_button.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_cubit.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartSummary extends StatelessWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<CartCubit>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          trailing: Text(
            "${cubit.count} ${tr(context).products}",
            style: context.headlineLargeText!.copyWith(color: Palette.grey),
          ),
          title: Text(
            "${cubit.totalPrice} ${tr(context).egp}",
            style: context.headlineLargeText,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16.w, 8.w, 16.w, 20.w),
          child: MainButton(
            label: tr(context).checkout,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
