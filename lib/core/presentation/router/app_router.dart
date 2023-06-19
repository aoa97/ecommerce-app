import 'package:ecommerce/features/auth/presentation/routes/auth_routes.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: "/auth", // TODO: Temp until creating homeRouter
  routes: [
    authRouter,
  ],
);