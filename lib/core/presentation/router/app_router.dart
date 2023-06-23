import 'package:ecommerce/core/features/layout/routes/main_layout_routes.dart';
import 'package:ecommerce/features/auth/presentation/routes/auth_routes.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    authRouter,
    mainLayoutRouter,
  ],
);
