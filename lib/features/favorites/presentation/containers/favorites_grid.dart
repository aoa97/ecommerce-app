import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/core/presentation/widgets/horizontal_product_card.dart';
import 'package:ecommerce/features/favorites/presentation/controller/favorites_cubit.dart';
import 'package:ecommerce/features/favorites/presentation/controller/favorites_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritesGrid extends StatelessWidget {
  const FavoritesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, _) {
        final cubit = context.read<FavoritesCubit>();

        if (cubit.items.isEmpty) {
          return const Center(child: Text("Your Favorites List is Empty"));
        }

        return GridView.builder(
          itemCount: cubit.items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.67,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h,
          ),
          itemBuilder: (context, index) {
            final item = cubit.items[index];

            return HProductCard(
              key: ValueKey(item.productId),
              title: item.title,
              brand: item.brand,
              image: item.image!,
              rating: 22,
              price: item.price,
              priceBefore: item.priceBefore,
              discountPercentage: item.discountPercentage,
              actionType: ProductActionType.cart,
              onActionPressed: () {},
              onPressed: () {},
              onClose: () {
                cubit.deleteItem(item);
              },
            );
          },
        );
      },
    );
  }
}
