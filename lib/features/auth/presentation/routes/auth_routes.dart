import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:ecommerce/core/presentation/utils/enums.dart';
import 'package:ecommerce/features/auth/presentation/views/auth_layout_view.dart';
import 'package:ecommerce/features/auth/presentation/views/auth_view.dart';
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
          pageBuilder: (context, state) => PageBuilders.slide(
            state: state,
            child: const AuthView(authType: Auth.login),
          ),
        ),
        GoRoute(
          path: '/register',
          // redirect: HomeRedirect(),
          pageBuilder: (context, state) => PageBuilders.slide(
            state: state,
            child: const AuthView(authType: Auth.register),
          ),
        ),
      ],
    )
  ],
);
