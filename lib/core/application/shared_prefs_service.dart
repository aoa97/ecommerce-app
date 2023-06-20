import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static late final SharedPreferences _prefs;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Map<String, dynamic>? getMap(String key) {
    return _prefs.getString(key) != null ? jsonDecode(_prefs.getString(key)!) : null;
  }

  String? getString(String key) {
    return _prefs.getString(key);
  }

  Future<bool> setMap(String key, dynamic value) async {
    return await _prefs.setString(key, jsonEncode(value));
  }

  Future<bool> setString(String key, dynamic value) async {
    return await _prefs.setString(key, value);
  }

  Future<bool> delete(String key) async {
    return await _prefs.remove(key);
  }

  Future<bool> exists(String key) async {
    return _prefs.containsKey(key);
  }
}
