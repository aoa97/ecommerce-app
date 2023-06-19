import 'dart:ui';

import 'package:ecommerce/core/features/locale/data/datasources/locale_local_datasource.dart';

abstract class ILocaleRepository {
  Future<void> cacheLocale(Locale locale);
  Locale getCachedLocale();
}

class LocaleRepository implements ILocaleRepository {
  final LocaleLocalDataSource _dataSource;

  LocaleRepository({required LocaleLocalDataSource dataSource}) : _dataSource = dataSource;

  @override
  Future<void> cacheLocale(Locale locale) {
    return _dataSource.cacheLocale(locale);
  }

  @override
  Locale getCachedLocale() {
    return _dataSource.getCachedLocale();
  }
}