import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/core/presentation/widgets/transparent_scaffold.dart';
import 'package:ecommerce/features/home/presentation/container/horizontal_products_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TransparentScaffold(
      darkIcons: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Palette.primary,
              height: Sizes.x196 + Sizes.statusBarHeight,
            ),
            Sizes.x24.sph,
            HProductsSection(
              title: "Sale",
              subTitle: "Super Summer Sale",
              onViewAll: () {},
              items: const [],
            ),
            Sizes.x20.sph,
            HProductsSection(
              title: "New",
              subTitle: "You’ve never seen it before!",
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
