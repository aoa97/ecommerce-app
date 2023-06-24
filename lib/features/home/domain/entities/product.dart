import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String image;
  final String title;
  final String brand;
  final num price;
  final num? priceBefore;
  final num rating;
  final num? discountPercentage;

  const Product({
    required this.id,
    required this.image,
    required this.title,
    required this.brand,
    required this.price,
    required this.priceBefore,
    required this.rating,
    required this.discountPercentage,
  });

  @override
  List<Object> get props {
    return [id, image, title, brand, price, priceBefore!, rating, discountPercentage!];
  }
}
