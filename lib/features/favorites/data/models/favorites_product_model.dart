import 'package:hive/hive.dart';

part 'favorites_product_model.g.dart'; // This file will be generated by Hive

@HiveType(typeId: 1)
class FavoritesProductModel extends HiveObject {
  @HiveField(0)
  final String productId;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String brand;

  @HiveField(3)
  final num price;

  @HiveField(4)
  final num? priceBefore;

  @HiveField(5)
  final num? discountPercentage;

  @HiveField(7)
  final String? image;

  FavoritesProductModel({
    required this.productId,
    required this.title,
    required this.brand,
    required this.price,
    required this.priceBefore,
    required this.discountPercentage,
    required this.image,
  });

  factory FavoritesProductModel.fromJson(Map<String, dynamic> json) {
    return FavoritesProductModel(
      productId: json['id'],
      title: json['title'],
      brand: json['brand'],
      price: json['price'],
      priceBefore: json['priceBefore'],
      discountPercentage: json['discountPercentage'],
      image: json['image'],
    );
  }
}
