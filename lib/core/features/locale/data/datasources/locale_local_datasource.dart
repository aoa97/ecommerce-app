import 'dart:ui';

import 'package:ecommerce/core/application/shared_prefs_service.dart';

class LocaleLocalDataSource {
  final SharedPrefsService _sharedPrefsService;

  LocaleLocalDataSource({required SharedPrefsService sharedPrefsService})
      : _sharedPrefsService = sharedPrefsService;

  Future<void> cacheLocale(Locale locale) async {
    await _sharedPrefsService.setString("locale", locale.languageCode);
  }

  Locale getCachedLocale() {
    final languageCode = _sharedPrefsService.getString("locale");
    return Locale(languageCode ?? "ar");
  }
}
