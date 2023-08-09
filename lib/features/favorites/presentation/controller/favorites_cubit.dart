import 'package:ecommerce/features/favorites/data/models/favorites_product_model.dart';
import 'package:ecommerce/features/favorites/data/repository/favorites_repository.dart';
import 'package:ecommerce/features/favorites/presentation/controller/favorites_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final IFavoritesRepository _repository;
  List<FavoritesProductModel> items = [];

  FavoritesCubit({required IFavoritesRepository repository})
      : _repository = repository,
        super(FavoritesInitialState()) {
    items = _repository.items;
  }

  void refreshFavorites() {
    items = _repository.items;
    emit(FavoritesRefreshState());
  }

  Future<void> addItem(FavoritesProductModel item) async {
    await _repository.storeItem(item);
    refreshFavorites();
  }

  void deleteItem(FavoritesProductModel item) {
    item.delete();
    refreshFavorites();
  }
}
