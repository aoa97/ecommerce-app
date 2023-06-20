import 'package:ecommerce/core/features/layout/views/main_layout_view.dart';
import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final mainLayoutRouter = ShellRoute(
  builder: (BuildContext context, GoRouterState state, Widget child) {
    return MainLayoutView(child: child);
  },
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => PageBuilders.slide(state: state, child: const Text("Home")),
    ),
    GoRoute(
      path: '/shop',
      pageBuilder: (context, state) => PageBuilders.slide(state: state, child: const Text("Shop")),
    ),
    GoRoute(
      path: '/bag',
      pageBuilder: (context, state) => PageBuilders.slide(state: state, child: const Text("Bag")),
    ),
    GoRoute(
      path: '/favorites',
      pageBuilder: (context, state) => PageBuilders.slide(state: state, child: const Text("Favorites")),
    ),
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) => PageBuilders.slide(state: state, child: const Text("Profile")),
    ),
  ],
);
