import 'package:ecommerce/features/cart/data/models/cart_product_model.dart';
import 'package:ecommerce/features/cart/data/repository/cart_repository.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    final exist = items.where((e) => e.productId == item.productId).firstOrNull;

    if (exist != null) {
      exist.qty = exist.qty + 1;
      exist.save();
    } else {
      await _repository.storeItem(item);
    }

    refreshCart();
  }

  void deleteItem(CartProductModel item) {
    item.delete(); // Credits to HiveObject :)
    refreshCart();
  }

  void updateItemQty(CartProductModel item, int qty) {
    item.qty = qty;
    item.save();
    refreshCart();
  }

  int get count {
    return items.fold(0, (previousValue, cartItem) => previousValue + cartItem.qty);
  }

  num get totalPrice {
    return items.fold(0, (previousValue, cartItem) => previousValue + cartItem.qty * cartItem.price);
  }
}
