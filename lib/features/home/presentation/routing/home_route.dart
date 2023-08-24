import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:ecommerce/features/home/presentation/ui/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final homeRoute = GoRoute(
  path: HomeScreen.path,
  pageBuilder: (context, state) => PageBuilders.fade(state: state, child: const HomeScreen()),
);
