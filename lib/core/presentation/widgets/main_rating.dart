import 'package:ecommerce/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MainRating extends StatelessWidget {
  const MainRating({super.key, required this.rating});

  final num rating;

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      allowHalfRating: true,
      itemSize: 13,
      ignoreGestures: true,
      itemPadding: const EdgeInsets.symmetric(horizontal: 1),
      initialRating: rating.toDouble(),
      direction: Axis.horizontal,
      itemCount: 5,
      ratingWidget: RatingWidget(
        full: Assets.icons.starFilled.svg(),
        half: Assets.icons.starHalfed.svg(),
        empty: Assets.icons.star.svg(),
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
