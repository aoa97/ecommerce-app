import 'package:ecommerce/features/product/data/datasources/product_remote_datasource.dart';
import 'package:ecommerce/features/product/data/models/product_details_model.dart';

abstract class IProductRepository {
  Future<ProductDetailsModel> getProductDetails(String id);
}

class ProductRepository implements IProductRepository {
  final IProductRemoteDataSource _dataSource;

  ProductRepository(this._dataSource);

  @override
  Future<ProductDetailsModel> getProductDetails(String id) {
    return _dataSource.getProductDetails(id);
  }
}
