import 'package:ecommerce/features/home/domain/entities/product.dart';

class ProductModel extends Product {
  const ProductModel({
    required super.id,
    required super.image,
    required super.title,
    required super.brand,
    required super.price,
    required super.rating,
    required super.discountPercentage,
    required super.priceBefore,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        image: json["thumbnail"],
        title: json["title"],
        brand: json["brand"],
        price: json["price"],
        rating: json["rating"],
        discountPercentage: json["discountPercentage"],
        priceBefore: json["priceBefore"] ?? json["price"] + json["price"] * json["discountPercentage"] / 100,
      );
}
