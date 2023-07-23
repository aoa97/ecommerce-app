import 'package:ecommerce/core/application/service_locator.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:ecommerce/core/presentation/widgets/loading_indicator.dart';
import 'package:ecommerce/core/presentation/widgets/main_error_widget.dart';
import 'package:ecommerce/features/home/presentation/containers/home_carousel.dart';
import 'package:ecommerce/features/home/presentation/containers/horizontal_products_section.dart';
import 'package:ecommerce/features/home/presentation/cubit/home_cubit.dart';
import 'package:ecommerce/features/home/presentation/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => sl<HomeCubit>(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: context.mqh * .1,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Palette.primary, Palette.secondary],
              ),
            ),
          ),
          title: ClipRRect(
            borderRadius: BorderRadius.circular(Sizes.radiusMd),
            child: ReactiveTextField(
              formControl: FormControl(),
              decoration: InputDecoration(
                prefixIcon: IconButton(icon: const Icon(Icons.search), onPressed: () {}),
                hintText: "Search Salla",
              ),
            ),
          ),
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            final cubit = context.read<HomeCubit>();

            if (state is HomeResourcesFulfilled) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    const HomeCarousel(),
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
