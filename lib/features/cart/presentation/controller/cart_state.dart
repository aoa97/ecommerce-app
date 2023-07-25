import 'package:ecommerce/core/application/api_service/error/error_model.dart';

abstract class CartState {}

class CartInitialState extends CartState {}

class CartResourcesPending extends CartState {}

class CartResourcesFulfilled extends CartState {}

class CartResourcesRejected extends CartState {
  final ErrorModel errorModel;
  CartResourcesRejected(this.errorModel);
}
