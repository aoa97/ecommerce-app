import 'package:ecommerce/core/application/api_service/api_service.dart';
import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/features/product/data/models/product_details_model.dart';

abstract class IProductRemoteDataSource {
  Future<ProductDetailsModel> getProductDetails(String id);
}

class ProductRemoteDataSource implements IProductRemoteDataSource {
  final ApiService _apiService;

  ProductRemoteDataSource(this._apiService);

  @override
  Future<ProductDetailsModel> getProductDetails(String id) async {
    try {
      final data = (await _apiService.get('/products.json?orderBy="\$key"&equalTo="$id"')).data;
      final ProductDetailsModel product = ProductDetailsModel.fromJson(data.values.first, id: data.keys.first);
      return product;
    } catch (e) {
      throw ErrorModel.parse(e);
    }
  }
}
