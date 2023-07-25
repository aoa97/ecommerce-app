import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/widgets/loading_indicator.dart';
import 'package:ecommerce/features/cart/presentation/components/cart_item.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CartCubit>();

    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is CartResourcesFulfilled) {
          final items = cubit.items;

          if (items!.isEmpty) {
            return const Center(child: Text("Your Cart List is Empty"));
          }

          return ListView.separated(
            padding: EdgeInsets.all(16.w),
            itemCount: items.length,
            separatorBuilder: (_, __) => 24.h.sph,
            itemBuilder: (context, index) => CartItem(
              item: items[index],
              onDeletePressed: () {},
              onSavePressed: () {},
            ),
          );
        }

        return const SafeArea(
          child: Center(
            child: LoadingIndicator(),
          ),
        );
      },
    );
  }
}
