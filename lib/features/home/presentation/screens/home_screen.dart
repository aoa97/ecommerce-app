import 'package:ecommerce/core/application/service_locator.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/core/presentation/widgets/loading_indicator.dart';
import 'package:ecommerce/core/presentation/widgets/main_error_widget.dart';
import 'package:ecommerce/core/presentation/widgets/transparent_scaffold.dart';
import 'package:ecommerce/features/home/presentation/container/horizontal_products_section.dart';
import 'package:ecommerce/features/home/presentation/cubit/home_cubit.dart';
import 'package:ecommerce/features/home/presentation/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => sl<HomeCubit>(),
      child: TransparentScaffold(
        darkIcons: true,
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            final cubit = context.read<HomeCubit>();

            if (state is HomeResourcesFulfilled) {
              return SingleChildScrollView(
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
                      items: cubit.saleProducts,
                    ),
                    Sizes.x20.sph,
                    HProductsSection(
                      title: "New",
                      subTitle: "You’ve never seen it before!",
                      onViewAll: () {},
                      items: cubit.newProducts,
                    ),
                    Sizes.x16.sph,
                  ],
                ),
              );
            }

            if (state is HomeResourcesRejected) {
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
          },
        ),
      ),
    );
  }
}
