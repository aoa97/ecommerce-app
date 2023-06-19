import 'package:ecommerce/core/application/api_service.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static init({
    required String apiBaseUrl,
  }) {
    // Global
    sl.registerSingleton<LocaleCubit>(LocaleCubit());
    sl.registerLazySingleton<ApiService>(() => ApiService(baseUrl: apiBaseUrl, locale: sl<LocaleCubit>()));
  }
}
