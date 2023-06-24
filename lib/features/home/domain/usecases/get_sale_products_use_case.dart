import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/features/home/domain/entities/product.dart';
import 'package:ecommerce/features/home/domain/repository/base_home_repository.dart';

class GetSaleProductsUseCase {
  final IHomeRepository _homeRepository;

  GetSaleProductsUseCase(this._homeRepository);

  Future<Either<ErrorModel, List<Product>>> execute() {
    return _homeRepository.getSaleProducts();
  }
}
