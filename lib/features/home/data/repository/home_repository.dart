import 'package:ecommerce/core/data/models/product_item_model.dart';
import 'package:ecommerce/features/home/data/datasources/home_remote_datasource.dart';

abstract class IHomeRepository {
  Future<List<ProductItemModel>> getProducts();
}

class HomeRepository implements IHomeRepository {
  final IHomeRemoteDataSource _dataSource;

  HomeRepository(this._dataSource);

  @override
  Future<List<ProductItemModel>> getProducts() {
    return _dataSource.getProducts();
  }
}
