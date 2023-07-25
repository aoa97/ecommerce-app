import 'package:equatable/equatable.dart';

abstract class IProductModel extends Equatable {
  final String id;
  final String title;
  final String brand;
  final num price;
  final num? priceBefore;
  final num? discountPercentage;
  final int? stock;

  const IProductModel({
    required this.id,
    required this.title,
    required this.brand,
    required this.price,
    required this.priceBefore,
    required this.discountPercentage,
    required this.stock,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'brand': brand,
      'price': price,
      'priceBefore': priceBefore,
      'discountPercentage': discountPercentage,
      'stock': stock,
    };
  }

  @override
  List<Object> get props {
    return [id, title, brand, price];
  }
}
