import 'package:ecommerce/core/application/service_locator.dart';
import 'package:ecommerce/core/application/shared_prefs_service.dart';
import 'package:ecommerce/core/presentation/models/flavor_config.dart';
import 'package:flutter/material.dart';

Future<void> mainInitializer({required FlavorConfig flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefsService.init();
  ServiceLocator.init(apiBaseUrl: flavor.apiBaseUrl);
}
