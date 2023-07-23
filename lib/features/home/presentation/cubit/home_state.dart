import 'package:ecommerce/core/application/api_service/error/error_model.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeResourcesPending extends HomeState {}

class HomeResourcesFulfilled extends HomeState {}

class HomeResourcesRejected extends HomeState {
  final ErrorModel errorModel;
  HomeResourcesRejected(this.errorModel);
}
