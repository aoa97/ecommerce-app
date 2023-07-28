import 'package:ecommerce/features/cart/data/models/cart_product_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService<T> {
  static Future init() async {
    await Hive.initFlutter();
    // Registers
    Hive.registerAdapter(CartProductModelAdapter());
    await Hive.openBox<CartProductModel>("cart");
  }
}
