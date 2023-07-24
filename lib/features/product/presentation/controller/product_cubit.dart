import 'package:ecommerce/core/application/api_service/error/error_model.dart';
import 'package:ecommerce/features/product/data/models/product_details_model.dart';
import 'package:ecommerce/features/product/data/repository/product_repository.dart';
import 'package:ecommerce/features/product/presentation/controller/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductState> {
  final String productId;
  final IProductRepository _repository;
  ProductDetailsModel? product;

  ProductCubit({required this.productId, required IProductRepository repository})
      : _repository = repository,
        super(ProductInitialState()) {
    fetchResources();
  }

  Future<void> fetchResources() async {
    emit(ProductResourcesPending());
    try {
      product = await _repository.getProductDetails(productId);
      emit(ProductResourcesFulfilled());
    } on ErrorModel catch (e) {
      emit(ProductResourcesRejected(e));
    }
  }
}
