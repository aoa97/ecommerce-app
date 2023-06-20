import 'dart:ui';

import 'package:ecommerce/core/application/shared_prefs_service.dart';

abstract class ILocaleLocalDataSource {
  Future<void> cacheLocale(Locale locale);
  Locale getCachedLocale();
}

class LocaleLocalDataSource implements ILocaleLocalDataSource {
  final SharedPrefsService _sharedPrefsService;

  LocaleLocalDataSource({required SharedPrefsService sharedPrefsService})
      : _sharedPrefsService = sharedPrefsService;

  @override
  Future<void> cacheLocale(Locale locale) async {
    await _sharedPrefsService.setString("locale", locale.languageCode);
  }

  @override
  Locale getCachedLocale() {
    final languageCode = _sharedPrefsService.getString("locale");
    return Locale(languageCode ?? "ar");
  }
}
