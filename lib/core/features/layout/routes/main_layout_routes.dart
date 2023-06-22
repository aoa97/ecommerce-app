import 'package:ecommerce/core/features/layout/screens/main_layout_screen.dart';
import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:ecommerce/features/cart/presentation/screens/cart_screen.dart';
import 'package:ecommerce/features/favorites/presentation/screens/favorites_screen.dart';
import 'package:ecommerce/features/home/presentation/screens/home_screen.dart';
import 'package:ecommerce/features/profile/presentation/screens/profile_screen.dart';
import 'package:ecommerce/features/shop/presentation/screens/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final mainLayoutRouter = ShellRoute(
  builder: (BuildContext context, GoRouterState state, Widget child) {
    return MainLayoutScreen(child: child);
  },
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => PageBuilders.slide(state: state, child: const HomeScreen()),
    ),
    GoRoute(
      path: '/shop',
      pageBuilder: (context, state) => PageBuilders.slide(state: state, child: const ShopScreen()),
    ),
    GoRoute(
      path: '/bag',
      pageBuilder: (context, state) => PageBuilders.slide(state: state, child: const CartScreen()),
    ),
    GoRoute(
      path: '/favorites',
      pageBuilder: (context, state) => PageBuilders.slide(state: state, child: const FavoritesScreen()),
    ),
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) => PageBuilders.slide(state: state, child: const ProfileScreen()),
    ),
  ],
);
