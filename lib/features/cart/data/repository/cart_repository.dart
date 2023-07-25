import 'package:ecommerce/features/cart/data/datasources/cart_local_datasource.dart';
import 'package:ecommerce/features/cart/data/models/cart_product_model.dart';

abstract class ICartRepository {
  Future<void> storeCartProduct(CartProductModel product);
  Future<List<CartProductModel>> getCartItems();
}

class CartRepository implements ICartRepository {
  final ICartLocalDataSource dataSource;

  CartRepository(this.dataSource);

  @override
  Future<void> storeCartProduct(CartProductModel product) {
    return dataSource.storeCartProduct(product);
  }

  @override
  Future<List<CartProductModel>> getCartItems() {
    return dataSource.getCartItems();
  }
}
