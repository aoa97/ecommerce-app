import 'package:ecommerce/features/cart/data/models/cart_product_model.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_state.dart';
import 'package:ecommerce/features/cart/presentation/ui/components/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        final List<CartProductModel> items = context.read<CartCubit>().items;

        if (items.isEmpty) {
          return const Center(child: Text("Your Cart List is Empty"));
        }

        return ListView.separated(
          padding: EdgeInsets.all(16.w),
          itemCount: items.length,
          separatorBuilder: (_, __) => 24.verticalSpace,
          itemBuilder: (context, index) => CartItem(item: items[index]),
        );
      },
    );
  }
}
