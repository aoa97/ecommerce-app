import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final int id;
  final String image;
  final String title;
  final String brand;
  final num rating;
  final num price;
  final num? priceBefore;
  final num? discountPercentage;
  final List<String>? gallery;
  final String? description;
  final int? stock;

  const ProductModel({
    required this.id,
    required this.image,
    required this.title,
    required this.brand,
    required this.rating,
    required this.price,
    this.priceBefore,
    this.discountPercentage,
    this.gallery,
    this.description,
    this.stock,
  });

  @override
  List<Object> get props {
    return [id, image, title, brand, rating, price];
  }
}
