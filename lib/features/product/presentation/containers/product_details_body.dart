import 'package:ecommerce/assets/dummy_data.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/widgets/horizontal_product_list.dart';
import 'package:ecommerce/core/presentation/widgets/loading_indicator.dart';
import 'package:ecommerce/core/presentation/widgets/main_error_widget.dart';
import 'package:ecommerce/core/presentation/widgets/main_rating.dart';
import 'package:ecommerce/features/product/presentation/containers/product_image_carousel.dart';
import 'package:ecommerce/features/product/presentation/controller/product_cubit.dart';
import 'package:ecommerce/features/product/presentation/controller/product_state.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductCubit>();

    return BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
      if (state is ProductResourcesFulfilled) {
        final product = cubit.product;

        return ListView(
          children: [
            ProductImageCarousel(images: product!.gallery!),
            16.h.sph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product.title, style: context.displayMediumText),
                          4.h.sph,
                          Text(product.brand, style: context.labelLargeText),
                          8.h.sph,
                          MainRating(rating: product.rating),
                        ],
                      ),
                      Text("${product.price} ${tr(context).egp}", style: context.displayMediumText),
                    ],
                  ),
                  12.h.sph,
                  Text(
                    product.description,
                    textAlign: TextAlign.justify,
                    style: context.bodyMediumText!.copyWith(height: 1.5.h),
                  ),
                  16.h.sph,
                  Text("You can also like this", style: context.headlineMediumText),
                  12.h.sph,
                  HProductList(items: DummyData.products)
                ],
              ),
            ),
          ],
        );
      }

      if (state is ProductResourcesRejected) {
        return MainErrorWidget(
          error: state.errorModel,
          onRefresh: cubit.fetchResources,
        );
      }

      return const SafeArea(
        child: Center(
          child: LoadingIndicator(),
        ),
      );
    });
  }
}
