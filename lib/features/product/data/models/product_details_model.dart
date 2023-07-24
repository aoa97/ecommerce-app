import 'package:ecommerce/core/data/interfaces/base_product_model.dart';

class ProductDetailsModel extends IProductModel {
  final List<String>? gallery;
  final String description;

  const ProductDetailsModel({
    required super.id,
    required super.title,
    required super.brand,
    required super.rating,
    required super.price,
    required super.priceBefore,
    required super.discountPercentage,
    required super.stock,
    required this.gallery,
    required this.description,
  });

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json, {String? id}) {
    return ProductDetailsModel(
      id: id ?? json['id'],
      title: json['title'],
      brand: json['brand'],
      rating: json['rating'],
      price: json['price'],
      priceBefore: json['priceBefore'],
      discountPercentage: json['discountPercentage'],
      stock: json['stock'],
      description: json['description'],
      gallery: json['gallery'] != null ? List<String>.from(json['gallery']) : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'description': description,
      'gallery': gallery,
    };
  }
}
