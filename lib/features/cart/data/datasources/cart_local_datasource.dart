import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/features/cart/data/models/cart_product_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class ICartLocalDataSource {
  List<CartProductModel> get items;
  Future<void> storeItem(CartProductModel product);
  Future<void> deleteItem(String id);
}

class CartLocalDataSource implements ICartLocalDataSource {
  late Box<CartProductModel> _cartBox;

  CartLocalDataSource() {
    _init();
  }

  _init() async {
    _cartBox = Hive.box('cart');
  }

  @override
  List<CartProductModel> get items => _cartBox.values.toList();

  @override
  Future<void> storeItem(CartProductModel product) async {
    try {
      await _cartBox.add(product);
    } catch (e) {
      throw UnexpectedErrorModel();
    }
  }

  @override
  Future<void> deleteItem(String id) {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }
}
