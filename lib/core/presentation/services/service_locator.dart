import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static init() {
    // Localization
    sl.registerLazySingleton<LocaleCubit>(() => LocaleCubit());
  }
}
