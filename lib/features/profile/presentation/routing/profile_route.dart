import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:ecommerce/features/profile/presentation/screens/profile_screen.dart';
import 'package:go_router/go_router.dart';

final profileRoute = GoRoute(
  path: ProfileScreen.path,
  pageBuilder: (context, state) => PageBuilders.slideHorizontal(state: state, child: const ProfileScreen()),
);
