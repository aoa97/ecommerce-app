import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/features/home/domain/entities/product.dart';

abstract class IHomeRepository {
  Future<Either<ErrorModel, List<Product>>> getSaleProducts();
}
