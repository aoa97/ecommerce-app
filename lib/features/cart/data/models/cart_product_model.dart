import 'package:ecommerce/core/data/interfaces/base_product_model.dart';

class CartProductModel extends IProductModel {
  final String image;
  final String description;
  final int qty;

  const CartProductModel({
    required super.id,
    required super.title,
    required super.brand,
    required super.price,
    required super.priceBefore,
    required super.discountPercentage,
    required super.stock,
    required this.image,
    required this.description,
    required this.qty,
  });

  factory CartProductModel.fromJson(Map<String, dynamic> json) {
    return CartProductModel(
      id: json['id'],
      title: json['title'],
      brand: json['brand'],
      price: json['price'],
      priceBefore: json['priceBefore'],
      discountPercentage: json['discountPercentage'],
      stock: json['stock'],
      description: json['description'],
      image: json['image'],
      qty: json['qty'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'image': image,
      'qty': qty,
    };
  }
}
