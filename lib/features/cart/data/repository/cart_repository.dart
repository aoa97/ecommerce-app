import 'package:ecommerce/features/cart/data/datasources/cart_local_datasource.dart';
import 'package:ecommerce/features/cart/data/models/cart_product_model.dart';

abstract class ICartRepository {
  Future<void> storeItem(CartProductModel product);
  List<CartProductModel> get items;
}

class CartRepository implements ICartRepository {
  final ICartLocalDataSource dataSource;

  CartRepository(this.dataSource);

  @override
  Future<void> storeItem(CartProductModel product) {
    return dataSource.storeItem(product);
  }

  @override
  List<CartProductModel> get items => dataSource.items;
}
