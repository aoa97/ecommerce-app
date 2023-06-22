import 'package:ecommerce/assets/assets.gen.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final double? size;

  const LoadingIndicator({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return SizedBox.square(
      dimension: size ?? mq.width * .25,
      child: Assets.lottie.loaderSix.lottie(),
    );
  }
}
