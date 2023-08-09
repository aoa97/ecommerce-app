import 'package:ecommerce/core/application/service_locator.dart';
import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/features/home/presentation/controller/home_cubit.dart';
import 'package:ecommerce/features/home/presentation/ui/components/home_search_bar.dart';
import 'package:ecommerce/features/home/presentation/ui/containers/home_carousel.dart';
import 'package:ecommerce/features/home/presentation/ui/containers/home_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          title: const HomeSearchBar(),
        ),
        body: const CustomScrollView(
          slivers: [
            HomeCarousel(),
            HomeProducts(),
          ],
        ),
      ),
    );
  }
}
