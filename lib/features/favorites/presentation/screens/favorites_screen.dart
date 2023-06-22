import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/core/presentation/widgets/main_body.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar.basic(context, title: "FavoritesScreen"),
      body: const MainBody(
        child: Text("FavoritesScreen"),
      ),
    );
  }
}