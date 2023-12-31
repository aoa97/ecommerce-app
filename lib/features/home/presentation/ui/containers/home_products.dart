import 'package:ecommerce/core/data/models/product_item_model.dart';
import 'package:ecommerce/core/presentation/widgets/loading_indicator.dart';
import 'package:ecommerce/core/presentation/widgets/main_error_widget.dart';
import 'package:ecommerce/features/home/presentation/controller/home_cubit.dart';
import 'package:ecommerce/features/home/presentation/controller/home_state.dart';
import 'package:ecommerce/features/home/presentation/ui/components/product_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final cubit = context.read<HomeCubit>();
        final products = cubit.products;

        return switch (state) {
          HomeResourcesFulfilled() => _Grid(products: products),
          HomeResourcesRejected() => MainErrorWidget(error: state.errorModel, onRefresh: cubit.fetchResources),
          _ => const Center(child: LoadingIndicator()),
        };
      },
    );
  }
}

class _Grid extends StatelessWidget {
  const _Grid({required this.products});

  final List<ProductItemModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.fromLTRB(20.h, 20.h, 20.h, 10.h),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15.h,
        mainAxisSpacing: 15.h,
        childAspectRatio: .8,
      ),
      itemBuilder: (context, index) => ProductGridItem(item: products[index]),
    );
  }
}
