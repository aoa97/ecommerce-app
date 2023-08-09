import 'package:ecommerce/core/presentation/router/app_router.dart';
import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:ecommerce/features/addresses/presentation/ui/screens/addresses_screen.dart';
import 'package:go_router/go_router.dart';

final addressesRouter = GoRoute(
  parentNavigatorKey: appRouteNavigatorKey,
  path: "/addresses",
  pageBuilder: (context, state) => PageBuilders.slideVertical(state: state, child: const AddressesScreen()),
);
