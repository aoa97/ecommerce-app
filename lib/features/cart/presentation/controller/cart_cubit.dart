import 'package:ecommerce/features/cart/data/models/cart_product_model.dart';
import 'package:ecommerce/features/cart/data/repository/cart_repository.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/*
  fetchCart [x]
  addItem []
  deleteItem []
  clearCart []
*/

class CartCubit extends Cubit<CartState> {
  final ICartRepository _repository;
  List<CartProductModel> items = [];

  CartCubit({required ICartRepository repository})
      : _repository = repository,
        super(CartInitialState()) {
    items = _repository.items;
  }

  void refreshCart() {
    items = _repository.items;
    emit(CartRefreshState());
  }

  Future<void> addItem(CartProductModel item) async {
    // Exist ? Update QTY
    // Not ? Add 3la tool
    await _repository.storeItem(item);
    refreshCart();
  }

  removeItem() {}

  int get cartCount => items.length;
}
