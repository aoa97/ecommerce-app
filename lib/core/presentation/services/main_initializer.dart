import 'package:ecommerce/core/presentation/services/service_locator.dart';
import 'package:flutter/material.dart';

Future<void> mainInitializer() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator.init();
}
