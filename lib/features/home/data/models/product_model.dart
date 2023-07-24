import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String id;
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
  final DateTime? createdAt;

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
    this.createdAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json, {String? id}) {
    return ProductModel(
      id: id ?? json['id'],
      image: json['image'],
      title: json['title'],
      brand: json['brand'],
      rating: json['rating'],
      price: json['price'],
      priceBefore: json['priceBefore'],
      discountPercentage: json['discountPercentage'],
      gallery: json['gallery'] != null ? List<String>.from(json['gallery']) : null,
      description: json['description'],
      stock: json['stock'],
      createdAt: json['createdAt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // 'id': id,
      'image': image,
      'title': title,
      'brand': brand,
      'rating': rating,
      'price': price,
      'priceBefore': priceBefore,
      'discountPercentage': discountPercentage,
      'gallery': gallery,
      'description': description,
      'stock': stock,
    };
  }

  @override
  List<Object> get props {
    return [id, image, title, brand, rating, price];
  }
}
