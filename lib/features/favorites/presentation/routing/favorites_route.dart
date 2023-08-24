import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:ecommerce/features/favorites/presentation/ui/screens/favorites_screen.dart';
import 'package:go_router/go_router.dart';

final favoritesRoute = GoRoute(
  path: FavoritesScreen.path,
  pageBuilder: (context, state) => PageBuilders.fade(state: state, child: const FavoritesScreen()),
);
