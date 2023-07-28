import 'package:ecommerce/features/cart/data/models/cart_product_model.dart';
import 'package:ecommerce/features/product/data/models/product_details_model.dart';

class CartProductAdapter {
  static CartProductModel adaptProductDetails(ProductDetailsModel product) {
    return CartProductModel(
      productId: product.id,
      title: product.title,
      brand: product.brand,
      price: product.price,
      priceBefore: product.priceBefore,
      discountPercentage: product.discountPercentage,
      stock: product.stock,
      image: product.gallery != null ? product.gallery![0] : null,
      description: product.description,
      qty: 1,
    );
  }
}
