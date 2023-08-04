import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/features/favorites/data/models/favorites_product_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class IFavoritesLocalDataSource {
  List<FavoritesProductModel> get items;
  Future<void> storeItem(FavoritesProductModel product);
}

class FavoritesLocalDataSource implements IFavoritesLocalDataSource {
  late Box<FavoritesProductModel> _favoritesBox;

  FavoritesLocalDataSource() {
    _init();
  }

  _init() async {
    _favoritesBox = Hive.box('favorites');
  }

  @override
  List<FavoritesProductModel> get items => _favoritesBox.values.toList();

  @override
  Future<void> storeItem(FavoritesProductModel product) async {
    try {
      await _favoritesBox.add(product);
    } catch (e) {
      throw UnexpectedErrorModel();
    }
  }
}
