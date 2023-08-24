import 'package:ecommerce/core/presentation/router/app_router.dart';
import 'package:ecommerce/features/checkout/presentation/ui/screens/checkout_screen.dart';
import 'package:go_router/go_router.dart';

final checkoutRoute = GoRoute(
  parentNavigatorKey: appRouteNavigatorKey,
  path: CheckoutScreen.path,
  builder: (context, state) => const CheckoutScreen(),
  // redirect:
);
