import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/features/auth/presentation/layouts/auth_layout.dart';
import 'package:ecommerce/features/auth/presentation/screens/auth_screen.dart';
import 'package:go_router/go_router.dart';

final authRouter = StatefulShellRoute(
  builder: (context, state, navigator) => navigator,
  navigatorContainerBuilder: (context, navigator, children) => AuthLayoutView(
    navigator: navigator,
    children: children,
  ),
  branches: [
    StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/auth',
          // redirect: HomeRedirect(),
          pageBuilder: (context, state) => PageBuilders.slideVertical(
            state: state,
            child: const AuthScreen(authType: Auth.login),
          ),
        ),
        GoRoute(
          path: '/register',
          // redirect: HomeRedirect(),
          pageBuilder: (context, state) => PageBuilders.slideVertical(
            state: state,
            child: const AuthScreen(authType: Auth.register),
          ),
        ),
      ],
    )
  ],
);
