import 'package:ecommerce/features/favorites/data/datasources/favorites_local_datasource.dart';
import 'package:ecommerce/features/favorites/data/models/favorites_product_model.dart';

abstract class IFavoritesRepository {
  Future<void> storeItem(FavoritesProductModel product);
  List<FavoritesProductModel> get items;
}

class FavoritesRepository implements IFavoritesRepository {
  final IFavoritesLocalDataSource dataSource;

  FavoritesRepository(this.dataSource);

  @override
  Future<void> storeItem(FavoritesProductModel product) {
    return dataSource.storeItem(product);
  }

  @override
  List<FavoritesProductModel> get items => dataSource.items;
}
