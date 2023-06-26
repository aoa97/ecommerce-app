import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:ecommerce/features/cart/presentation/components/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(16.w),
      itemCount: 5,
      separatorBuilder: (_, __) => 24.h.sph,
      itemBuilder: (_, index) => CartItem(
        imageUri: "https://picsum.photos/150",
        brand: "Xiaomi",
        title: "Redmi Watch 2 Lite 5ATM, Water Resistant, GPS, Black, Gamda, Gedan Gedan Gedan Gedan",
        price: 900,
        priceBefore: 1000,
        discountPercentage: 10,
        stock: 4,
        onDeletePressed: () {},
        onSavePressed: () {},
      ),
    );
  }
}
