import 'package:ecommerce/features/cart/data/repository/cart_repository.dart';
import 'package:ecommerce/features/cart/presentation/controller/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState> {
  final ICartRepository _repository;

  CartCubit({required ICartRepository repository})
      : _repository = repository,
        super(CartInitialState()) {
    fetchResources();
  }

  Future<void> fetchResources() async {}

  Future<void> addProductToCart() async {}
}
