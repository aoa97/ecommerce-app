import 'package:ecommerce/core/data/interfaces/base_product_model.dart';

class ProductItemModel extends IProductModel {
  final String image;

  const ProductItemModel({
    required super.id,
    required super.title,
    required super.brand,
    required super.rating,
    required super.price,
    required super.priceBefore,
    required super.discountPercentage,
    required super.stock,
    required this.image,
  });

  factory ProductItemModel.fromJson(Map<String, dynamic> json, {String? id}) {
    return ProductItemModel(
      id: id ?? json['id'],
      title: json['title'],
      brand: json['brand'],
      rating: json['rating'],
      price: json['price'],
      priceBefore: json['priceBefore'],
      discountPercentage: json['discountPercentage'],
      stock: json['stock'],
      image: json['image'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'image': image,
    };
  }
}
