import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:ecommerce/features/cart/presentation/ui/screens/cart_screen.dart';
import 'package:go_router/go_router.dart';

final cartRoute = GoRoute(
  path: CartScreen.path,
  pageBuilder: (context, state) => PageBuilders.slideHorizontal(state: state, child: const CartScreen()),
);
