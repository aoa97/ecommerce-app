import 'package:ecommerce/features/home/data/datasources/home_remote_datasource.dart';
import 'package:ecommerce/features/home/data/models/product_model.dart';

abstract class IHomeRepository {
  Future<List<ProductModel>> getSaleProducts();
  Future<List<ProductModel>> getNewProducts();
}

class HomeRepository implements IHomeRepository {
  final IHomeRemoteDataSource _dataSource;

  HomeRepository(this._dataSource);

  @override
  Future<List<ProductModel>> getSaleProducts() {
    return _dataSource.getSaleProducts();
  }

  @override
  Future<List<ProductModel>> getNewProducts() {
    return _dataSource.getNewProducts();
  }
}
