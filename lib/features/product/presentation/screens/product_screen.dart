import 'package:ecommerce/core/application/service_locator.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/core/presentation/widgets/main_button.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_cubit.dart';
import 'package:ecommerce/features/product/data/repository/product_repository.dart';
import 'package:ecommerce/features/product/presentation/containers/product_details_body.dart';
import 'package:ecommerce/features/product/presentation/controller/product_cubit.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductScreen extends StatelessWidget {
  static const path = "/product"; // + /:id
  final String productId;

  const ProductScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductCubit>(
      create: (_) => ProductCubit(
        productId: productId,
        repository: sl<IProductRepository>(),
        cartCubit: sl<CartCubit>(),
      ),
      child: Scaffold(
        backgroundColor: Palette.white,
        appBar: MainAppBar.basic(context, hasBackButton: true, title: Builder(builder: _buildAppBarTitle)),
        body: const ProductDetailsBody(),
        bottomNavigationBar: Builder(builder: _buildAddToCart),
      ),
    );
  }

  Widget _buildAppBarTitle(BuildContext context) {
    final product = context.select((ProductCubit value) => value.product);

    if (product != null) {
      return Text(product.title);
    }

    return const SizedBox();
  }

  Widget _buildAddToCart(BuildContext context) {
    final cubit = context.read<ProductCubit>();

    return Padding(
      padding: EdgeInsets.all(16.w),
      child: MainButton(label: tr(context).add_to_cart, onPressed: cubit.addToCart),
    );
  }
}
