import 'dart:ui';

import 'package:ecommerce/core/features/locale/data/datasources/locale_local_datasource.dart';

class LocaleRepository {
  final LocaleLocalDataSource _dataSource;

  LocaleRepository({required LocaleLocalDataSource dataSource}) : _dataSource = dataSource;

  Future<void> cacheLocale(Locale locale) {
    return _dataSource.cacheLocale(locale);
  }

  Locale getCachedLocale() {
    return _dataSource.getCachedLocale();
  }
}
