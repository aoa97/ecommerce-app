import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/application/service_locator.dart';
import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/core/presentation/widgets/main_button.dart';
import 'package:ecommerce/core/presentation/widgets/main_icon_button.dart';
import 'package:ecommerce/features/product/data/repository/product_repository.dart';
import 'package:ecommerce/features/product/presentation/containers/product_details_body.dart';
import 'package:ecommerce/features/product/presentation/controller/product_cubit.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductScreen extends StatelessWidget {
  final String productId;

  const ProductScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductCubit>(
      create: (_) => ProductCubit(productId: productId, repository: sl<IProductRepository>()),
      child: Scaffold(
        appBar: MainAppBar.basic(
          context,
          title: Builder(
            builder: buildAppBarTitle,
          ),
          hasBackButton: true,
          actions: [
            MainIconButton(
              fillColor: Colors.transparent,
              padding: EdgeInsets.all(16.h),
              icon: Assets.icons.share.svg(),
              onPressed: () {},
            )
          ],
        ),
        body: const ProductDetailsBody(),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(16.w),
          child: MainButton(label: tr(context).add_to_cart, onPressed: () {}),
        ),
      ),
    );
  }

  Widget buildAppBarTitle(BuildContext context) {
    final product = context.select((ProductCubit value) => value.product);
    if (product != null) {
      return Text(product.title);
    }
    return const SizedBox();
  }
}
