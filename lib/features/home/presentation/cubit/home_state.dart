import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/features/home/domain/entities/product.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeResourcesPending extends HomeState {}

class HomeResourcesFulfilled extends HomeState {
  final List<Product> salesProducts;

  HomeResourcesFulfilled({required this.salesProducts});
}

class HomeResourcesRejected extends HomeState {
  final ErrorModel errorModel;
  HomeResourcesRejected(this.errorModel);
}
