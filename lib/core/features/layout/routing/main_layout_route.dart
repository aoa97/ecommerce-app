import 'package:ecommerce/core/features/layout/screens/main_layout_screen.dart';
import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:ecommerce/features/cart/presentation/routing/cart_route.dart';
import 'package:ecommerce/features/favorites/presentation/routing/favorites_route.dart';
import 'package:ecommerce/features/home/presentation/routing/home_route.dart';
import 'package:ecommerce/features/profile/presentation/routing/profile_route.dart';
import 'package:ecommerce/features/shop/presentation/routing/shop_route.dart';
import 'package:go_router/go_router.dart';

final mainLayoutRoute = ShellRoute(
  pageBuilder: (context, state, child) {
    return PageBuilders.fade(state: state, child: MainLayoutScreen(child: child));
  },
  routes: [
    homeRoute,
    shopRoute,
    cartRoute,
    favoritesRoute,
    profileRoute,
  ],
);
