import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/features/home/data/models/product_model.dart';
import 'package:ecommerce/features/home/data/repository/home_repository.dart';
import 'package:ecommerce/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final IHomeRepository _repository;
  List<ProductModel> saleProducts = [];
  List<ProductModel> newProducts = [];

  HomeCubit({required IHomeRepository repository})
      : _repository = repository,
        super(HomeInitialState()) {
    fetchResources();
  }

  Future<void> fetchResources() async {
    emit(HomeResourcesPending());
    try {
      await Future.wait([
        _repository.getSaleProducts().then((value) => saleProducts = value),
        _repository.getNewProducts().then((value) => newProducts = value),
      ]);
      emit(HomeResourcesFulfilled());
    } on ErrorModel catch (e) {
      emit(HomeResourcesRejected(e));
    }
  }
}
