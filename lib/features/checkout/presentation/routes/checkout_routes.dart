import 'package:ecommerce/core/presentation/router/app_router.dart';
import 'package:ecommerce/features/checkout/presentation/ui/screens/checkout_screen.dart';
import 'package:go_router/go_router.dart';

final checkoutRouter = GoRoute(
  parentNavigatorKey: appRouteNavigatorKey,
  path: "/checkout",
  builder: (context, state) => const CheckoutScreen(),
  // redirect:
);
