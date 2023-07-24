import 'package:ecommerce/core/application/api_service/error/error_model.dart';

abstract class ProductState {}

class ProductInitialState extends ProductState {}

class ProductResourcesPending extends ProductState {}

class ProductResourcesFulfilled extends ProductState {}

class ProductResourcesRejected extends ProductState {
  final ErrorModel errorModel;
  ProductResourcesRejected(this.errorModel);
}
