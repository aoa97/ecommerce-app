import 'package:ecommerce/features/home/domain/usecases/get_sale_products_use_case.dart';
import 'package:ecommerce/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetSaleProductsUseCase _getSaleProductsUseCase;

  HomeCubit({
    required GetSaleProductsUseCase getSaleProductsUseCase,
  })  : _getSaleProductsUseCase = getSaleProductsUseCase,
        super(HomeInitialState()) {
    fetchResources();
  }

  void fetchResources() async {
    emit(HomeResourcesPending());
    final res = await _getSaleProductsUseCase.execute();
    res.fold(
      (l) => emit(HomeResourcesRejected(l)),
      (r) => emit(HomeResourcesFulfilled(salesProducts: r)),
    );
  }
}
