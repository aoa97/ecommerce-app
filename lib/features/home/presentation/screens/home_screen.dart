import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/features/home/presentation/container/horizontal_products_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Palette.primary,
              height: Sizes.x196 + Sizes.statusBarHeight,
            ),
            Sizes.x32.sph,
            HProductsSection(
              title: "Sale",
              subTitle: "Super Summer Sale",
              onViewAll: () {},
              items: const [],
            ),
            Sizes.x32.sph,
            HProductsSection(
              title: "Sale",
              subTitle: "Super Summer Sale",
              onViewAll: () {},
              items: const [],
            ),
            Sizes.x16.sph,
          ],
        ),
      ),
    );
  }
}
