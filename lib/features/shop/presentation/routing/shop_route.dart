import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:ecommerce/features/shop/presentation/ui/screens/shop_screen.dart';
import 'package:go_router/go_router.dart';

final shopRoute = GoRoute(
  path: ShopScreen.path,
  pageBuilder: (context, state) => PageBuilders.slideHorizontal(state: state, child: const ShopScreen()),
);
