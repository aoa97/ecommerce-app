import 'package:ecommerce/core/data/models/product_item_model.dart';
import 'package:ecommerce/features/home/data/datasources/home_remote_datasource.dart';

abstract class IHomeRepository {
  Future<List<ProductItemModel>> getSaleProducts();
  Future<List<ProductItemModel>> getNewProducts();
}

class HomeRepository implements IHomeRepository {
  final IHomeRemoteDataSource _dataSource;

  HomeRepository(this._dataSource);

  @override
  Future<List<ProductItemModel>> getSaleProducts() {
    return _dataSource.getSaleProducts();
  }

  @override
  Future<List<ProductItemModel>> getNewProducts() {
    return _dataSource.getNewProducts();
  }
}
