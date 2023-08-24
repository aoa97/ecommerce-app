import 'package:ecommerce/core/presentation/widgets/main_app_bar.dart';
import 'package:ecommerce/core/presentation/widgets/main_body.dart';
import 'package:ecommerce/features/favorites/presentation/ui/containers/favorites_grid.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  static const path = "/layout/favorites";

  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar.wide(context, title: Text(tr(context).favorites)),
      body: const MainBody(
        child: FavoritesGrid(),
      ),
    );
  }
}
