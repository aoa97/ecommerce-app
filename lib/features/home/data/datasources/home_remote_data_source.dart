import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/application/api_service/api_service.dart';
import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/features/home/data/models/product_model.dart';

abstract class IHomeRemoteDataSource {
  Future<Either<ErrorModel, List<ProductModel>>> getSaleProducts();
}

class HomeRemoteDataSource implements IHomeRemoteDataSource {
  final ApiService _apiService;

  HomeRemoteDataSource({required ApiService apiService}) : _apiService = apiService;

  @override
  Future<Either<ErrorModel, List<ProductModel>>> getSaleProducts() async {
    try {
      final res = await _apiService.get(endpoint: "/products/category/laptops?limit=5");
      return Right([...res.data["products"].map((e) => ProductModel.fromJson(e))]);
    } catch (e) {
      return Left(ErrorModel.parse(e));
    }
  }
}
