import 'package:ecommerce/features/cart/data/models/cart_product_model.dart';
import 'package:ecommerce/features/cart/data/repository/cart_repository.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState> {
  final ICartRepository _repository;
  List<CartProductModel>? items;

  CartCubit({required ICartRepository repository})
      : _repository = repository,
        super(CartInitialState()) {
    fetchResources();
  }

  fetchResources() {
    items = _repository.items;
    emit(CartResourcesFulfilled());
  }

  Future<void> addItem(CartProductModel item) async {
    await _repository.storeItem(item);
    fetchResources();
  }
}
