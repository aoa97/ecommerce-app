import 'package:ecommerce/core/features/layout/routes/main_layout_routes.dart';
import 'package:ecommerce/features/addresses/presentation/routes/addresses_routes.dart';
import 'package:ecommerce/features/auth/presentation/routes/auth_routes.dart';
import 'package:ecommerce/features/checkout/presentation/routes/checkout_routes.dart';
import 'package:ecommerce/features/product/presentation/routes/product_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouteNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: appRouteNavigatorKey,
  initialLocation: "/",
  routes: [
    authRouter,
    mainLayoutRouter,
    productRouter,
    checkoutRouter,
    addressesRouter,
  ],
);
