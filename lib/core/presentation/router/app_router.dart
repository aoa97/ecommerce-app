import 'package:ecommerce/core/features/layout/routing/main_layout_route.dart';
import 'package:ecommerce/features/addresses/presentation/routing/addresses_route.dart';
import 'package:ecommerce/features/auth/presentation/routing/auth_route.dart';
import 'package:ecommerce/features/checkout/presentation/routing/checkout_route.dart';
import 'package:ecommerce/features/home/presentation/ui/screens/home_screen.dart';
import 'package:ecommerce/features/product/presentation/routing/product_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouteNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: appRouteNavigatorKey,
  initialLocation: HomeScreen.path,
  routes: [
    mainLayoutRoute,
    productRoute,
    authRoute,
    checkoutRoute,
    addressesRoute,
  ],
);
