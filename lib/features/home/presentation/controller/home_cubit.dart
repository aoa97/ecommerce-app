import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/core/data/models/product_item_model.dart';
import 'package:ecommerce/features/home/data/repository/home_repository.dart';
import 'package:ecommerce/features/home/presentation/controller/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final IHomeRepository _repository;
  List<ProductItemModel> products = [];

  HomeCubit({required IHomeRepository repository})
      : _repository = repository,
        super(HomeInitialState()) {
    fetchResources();
  }

  Future<void> fetchResources() async {
    emit(HomeResourcesPending());
    try {
      await Future.wait([
        _repository.getProducts().then((value) => products = value),
      ]);
      emit(HomeResourcesFulfilled());
    } on ErrorModel catch (e) {
      emit(HomeResourcesRejected(e));
    }
  }
}
