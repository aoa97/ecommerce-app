import 'package:ecommerce/core/presentation/models/flavor_config.dart';
import 'package:ecommerce/core/presentation/services/service_locator.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/core/presentation/widgets/main_app.dart';
import 'package:flutter/material.dart';

final _config = FlavorConfig(
  type: Flavor.production,
  appTitle: "E-Commerce",
  apiBaseUrl: "https://eommerce.com",
);

void main() async {
  await _mainInitializer();
  runApp(
    MainApp(flavor: _config),
  );
}

Future<void> _mainInitializer() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator.init(apiBaseUrl: _config.apiBaseUrl);
}
