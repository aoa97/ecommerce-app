import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/features/home/data/datasources/home_remote_data_source.dart';
import 'package:ecommerce/features/home/domain/entities/product.dart';
import 'package:ecommerce/features/home/domain/repository/base_home_repository.dart';

class HomeRepository implements IHomeRepository {
  final IHomeRemoteDataSource _remoteDataSource;

  HomeRepository({required IHomeRemoteDataSource remoteDataSource}) : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<ErrorModel, List<Product>>> getSaleProducts() {
    return _remoteDataSource.getSaleProducts();
  }
}
