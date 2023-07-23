import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const carouselImages = [
  "https://images.unsplash.com/photo-1607083206968-13611e3d76db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2115&q=80",
  "https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
  "https://plus.unsplash.com/premium_photo-1673502751768-586478eb3fcb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
];

class HomeCarousel extends HookWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPage = useState(0);
    final page = usePageController(initialPage: 0);

    useEffect(() {
      var timer = Timer.periodic(const Duration(seconds: 4), (_) {
        currentPage.value = currentPage.value + 1;
        if (currentPage.value == carouselImages.length) {
          currentPage.value = 0;
        }
        page.animateToPage(currentPage.value, duration: const Duration(seconds: 1), curve: Curves.linear);
      });
      return timer.cancel;
    });

    return SizedBox(
      height: Sizes.mqh * .2,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: page,
            children: [
              ...carouselImages.map(
                (image) => CachedNetworkImage(
                  imageUrl: image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  placeholder: (context, url) => Container(color: Palette.black.withOpacity(.9)),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 10,
            child: Wrap(
              spacing: 8.w,
              children: List.generate(
                carouselImages.length,
                (index) => Container(
                  color: index == currentPage.value ? Palette.primary : Palette.grey,
                  width: 18.w,
                  height: 3.h,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
