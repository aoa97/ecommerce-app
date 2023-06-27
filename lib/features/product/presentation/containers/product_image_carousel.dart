import 'package:ecommerce/core/presentation/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageCarousel extends StatelessWidget {
  final List<String> images;

  const ProductImageCarousel({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 413.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        separatorBuilder: (c, i) => 4.w.spw,
        itemBuilder: (c, i) => SizedBox(width: 275.w, child: Image.network(images[i], fit: BoxFit.cover)),
      ),
    );
  }
}
