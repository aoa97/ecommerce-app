import 'package:ecommerce/core/presentation/utils/palette.dart';
import 'package:ecommerce/core/presentation/widgets/loading_indicator.dart';
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
    return Container(
      height: .47.sh,
      color: Palette.background,
      padding: EdgeInsets.all(20.w),
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
            width: 1.sw,
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
          icon: const Icon(Icons.arrow_back_ios, color: Palette.white, size: 20),
        ),
      ),
      body: PhotoViewGallery.builder(
        pageController: controller,
        itemCount: images.length,
        loadingBuilder: (context, _) => Container(
          color: Colors.black,
          child: const LoadingIndicator(),
        ),
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
