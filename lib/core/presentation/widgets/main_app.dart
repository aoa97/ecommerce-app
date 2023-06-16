import 'package:ecommerce/core/presentation/models/flavor_config.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  final FlavorConfig flavor;

  const MainApp({super.key, required this.flavor});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: flavor.type == Flavor.development,
      title: flavor.appTitle,
    );
  }
}
