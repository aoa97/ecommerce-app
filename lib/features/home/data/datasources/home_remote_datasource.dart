import 'package:ecommerce/core/application/api_service/api_service.dart';
import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/core/data/models/product_item_model.dart';

abstract class IHomeRemoteDataSource {
  Future<List<ProductItemModel>> getProducts();
}

class HomeRemoteDataSource implements IHomeRemoteDataSource {
  final ApiService _apiService;

  HomeRemoteDataSource(this._apiService);

  Future<List<ProductItemModel>> _fetchProducts(String endpoint) async {
    try {
      final data = (await _apiService.get(endpoint)).data;
      final List<ProductItemModel> products = [
        ...data.entries.map((e) => ProductItemModel.fromJson(e.value, id: e.key))
      ];
      return products;
    } catch (e) {
      throw ErrorModel.parse(e);
    }
  }

  @override
  Future<List<ProductItemModel>> getProducts() async {
    return _fetchProducts('/products.json');
  }
}

// '/products.json?orderBy="discountPercentage"&limitToFirst=4'
