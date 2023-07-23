import 'package:ecommerce/core/application/api_service/api_service.dart';
import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/features/home/data/models/product_model.dart';

abstract class IHomeRemoteDataSource {
  Future<List<ProductModel>> getNewProducts();
  Future<List<ProductModel>> getSaleProducts();
}

class HomeRemoteDataSource implements IHomeRemoteDataSource {
  final ApiService _apiService;

  HomeRemoteDataSource(this._apiService);

  @override
  Future<List<ProductModel>> getSaleProducts() async {
    try {
      final Map<String, dynamic> data = (await _apiService.get("/products.json")).data;
      final List<ProductModel> products = [...data.entries.map((e) => ProductModel.fromJson(e.value, id: e.key))];
      return products;
    } catch (e) {
      throw ErrorModel.parse(e);
    }
  }

  @override
  Future<List<ProductModel>> getNewProducts() async {
    try {
      final Map<String, dynamic> data = (await _apiService.get("/products.json")).data;
      final List<ProductModel> products = [...data.entries.map((e) => ProductModel.fromJson(e.value, id: e.key))];
      return products;
    } catch (e) {
      throw ErrorModel.parse(e);
    }
  }
}
