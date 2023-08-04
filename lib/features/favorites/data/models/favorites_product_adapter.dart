import 'package:ecommerce/core/data/models/product_item_model.dart';
import 'package:ecommerce/features/favorites/data/models/favorites_product_model.dart';

class FavoritesProductAdapter {
  static FavoritesProductModel adaptProductItem(ProductItemModel product) {
    return FavoritesProductModel(
      productId: product.id,
      title: product.title,
      brand: product.brand,
      price: product.price,
      priceBefore: product.priceBefore,
      discountPercentage: product.discountPercentage,
      image: product.image,
    );
  }
}
