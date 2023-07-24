import 'package:ecommerce/assets/assets.gen.dart';
import 'package:ecommerce/core/application/service_locator.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ProductImageCarousel extends StatelessWidget {
  final List<String> images;

  const ProductImageCarousel({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 413.h,
      child: PageView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => _GalleryViewer(images: images, index: index),
              ),
            );
          },
          child: SizedBox(
            width: Sizes.mqw,
            child: Image.network(images[index]),
          ),
        ),
      ),
    );
  }
}

class _GalleryViewer extends HookWidget {
  final List<String> images;
  final int index;

  const _GalleryViewer({required this.images, required this.index});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController(initialPage: index);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: sl<LocaleCubit>().isArabic
              ? Assets.icons.backRtl.svg(colorFilter: const ColorFilter.mode(Palette.white, BlendMode.srcIn))
              : Assets.icons.back.svg(colorFilter: const ColorFilter.mode(Palette.white, BlendMode.srcIn)),
        ),
      ),
      body: PhotoViewGallery.builder(
        pageController: controller,
        itemCount: images.length,
        builder: (BuildContext context, int index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(images[index]),
            heroAttributes: PhotoViewHeroAttributes(tag: images[index]),
          );
        },
      ),
    );
  }
}
