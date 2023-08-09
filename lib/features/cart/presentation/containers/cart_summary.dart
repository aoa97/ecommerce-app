import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/widgets/summary_section.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_cubit.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CartSummary extends StatelessWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<CartCubit>();

    return SummarySection(
      submitLabel: tr(context).checkout,
      onSubmit: () {
        context.push("/checkout");
      },
      tiles: [
        ListTile(
          trailing: Text(
            "${cubit.count} ${tr(context).products}",
            style: context.headlineLargeText!.copyWith(color: Palette.grey),
          ),
          title: Text(
            "${cubit.totalPrice} ${tr(context).egp}",
            style: context.headlineLargeText,
          ),
        )
      ],
    );
  }
}
