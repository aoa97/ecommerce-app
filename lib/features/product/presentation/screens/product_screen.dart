import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/assets/dummy_data.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/widgets/horizontal_product_list.dart';
import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/core/presentation/widgets/main_button.dart';
import 'package:ecommerce/core/presentation/widgets/main_icon_button.dart';
import 'package:ecommerce/core/presentation/widgets/main_rating.dart';
import 'package:ecommerce/features/home/domain/entities/product.dart';
import 'package:ecommerce/features/product/presentation/containers/product_image_carousel.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product = DummyData.products.first;

    return Scaffold(
      appBar: MainAppBar.basic(
        context,
        title: product.title,
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
      body: ListView(
        children: [
          ProductImageCarousel(images: product.gallery!),
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
                        const MainRating(rating: 4),
                      ],
                    ),
                    Text("${product.price} ${tr(context).egp}", style: context.displayMediumText),
                  ],
                ),
                12.h.sph,
                Text(
                  product.description!,
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
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.w),
        child: MainButton(label: tr(context).add_to_cart, onPressed: () {}),
      ),
    );
  }
}
