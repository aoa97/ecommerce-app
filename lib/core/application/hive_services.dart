import 'package:ecommerce/features/cart/data/models/cart_product_model.dart';
import 'package:ecommerce/features/favorites/data/models/favorites_product_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService<T> {
  static Future init() async {
    await Hive.initFlutter();
    // Cart
    Hive.registerAdapter(CartProductModelAdapter());
    await Hive.openBox<CartProductModel>("cart");

    // Favorites
    Hive.registerAdapter(FavoritesProductModelAdapter());
    await Hive.openBox<FavoritesProductModel>("favorites");
  }
}
