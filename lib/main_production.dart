import 'package:ecommerce/core/application/main_initializer.dart';
import 'package:ecommerce/core/presentation/models/flavor_config.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/core/presentation/widgets/main_app.dart';
import 'package:flutter/material.dart';

final _config = FlavorConfig(
  type: Flavor.production,
  appTitle: "E-Commerce",
  apiBaseUrl: "https://dummyjson.com/",
);

void main() async {
  await mainInitializer(flavor: _config);
  runApp(MainApp(flavor: _config));
}
