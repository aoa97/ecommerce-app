import 'package:ecommerce/core/presentation/router/app_router.dart';
import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/features/auth/presentation/screens/auth_screen.dart';
import 'package:go_router/go_router.dart';

final authRoute = ShellRoute(
  navigatorKey: appRouteNavigatorKey,
  builder: (context, state, child) => child,
  routes: [
    GoRoute(
      parentNavigatorKey: appRouteNavigatorKey,
      path: AuthScreen.loginPath,
      // redirect: HomeRedirect(),
      pageBuilder: (context, state) => PageBuilders.slideVertical(
        state: state,
        child: const AuthScreen(authType: Auth.login),
      ),
    ),
    GoRoute(
      parentNavigatorKey: appRouteNavigatorKey,
      path: AuthScreen.registerPath,
      // redirect: HomeRedirect(),
      pageBuilder: (context, state) => PageBuilders.slideVertical(
        state: state,
        child: const AuthScreen(authType: Auth.register),
      ),
    ),
  ],
);
