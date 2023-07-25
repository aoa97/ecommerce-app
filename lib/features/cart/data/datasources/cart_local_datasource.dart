import 'package:ecommerce/features/cart/data/models/cart_product_model.dart';

abstract class ICartLocalDataSource {
  Future<void> storeCartProduct(CartProductModel product);
  Future<List<CartProductModel>> getCartItems();
}

class CartLocalDataSource implements ICartLocalDataSource {
  @override
  Future<void> storeCartProduct(CartProductModel product) {
    // TODO: implement storeCartProduct
    throw UnimplementedError();
  }

  @override
  Future<List<CartProductModel>> getCartItems() {
    // TODO: implement getCartItems
    throw UnimplementedError();
  }
}
