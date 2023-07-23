import 'package:ecommerce/core/application/api_service/api_service.dart';
import 'package:ecommerce/core/application/shared_prefs_service.dart';
import 'package:ecommerce/core/features/locale/data/datasources/locale_local_datasource.dart';
import 'package:ecommerce/core/features/locale/data/repos/locale_repository.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/features/theme/theme.dart';
import 'package:ecommerce/features/home/data/datasources/home_remote_datasource.dart';
import 'package:ecommerce/features/home/data/repository/home_repository.dart';
import 'package:ecommerce/features/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static init({
    required String apiBaseUrl,
  }) {
    // Global
    sl.registerLazySingleton<AppTheme>(() => AppTheme(localeCubit: sl<LocaleCubit>()));
    sl.registerLazySingleton<SharedPrefsService>(() => SharedPrefsService());
    sl.registerLazySingleton<ApiService>(() => ApiService(baseUrl: apiBaseUrl, locale: sl<LocaleCubit>()));

    // Locale
    sl.registerLazySingleton<LocaleLocalDataSource>(() => LocaleLocalDataSource(sharedPrefsService: sl()));
    sl.registerLazySingleton<LocaleRepository>(() => LocaleRepository(dataSource: sl()));
    sl.registerLazySingleton<LocaleCubit>(() => LocaleCubit(localeRepository: sl()));

    // Feature -> Home
    sl.registerLazySingleton<IHomeRemoteDataSource>(() => HomeRemoteDataSource(sl<ApiService>()));
    sl.registerLazySingleton<IHomeRepository>(() => HomeRepository(sl<IHomeRemoteDataSource>()));
    sl.registerLazySingleton<HomeCubit>(() => HomeCubit(repository: sl<IHomeRepository>()));
  }
}
