import 'package:ecommerce/core/presentation/router/page_builders.dart';
import 'package:ecommerce/features/product/presentation/screens/product_screen.dart';
import 'package:go_router/go_router.dart';

final productRoute = GoRoute(
  path: "${ProductScreen.path}/:productId",
  pageBuilder: (context, state) {
    return PageBuilders.slideVertical(
      state: state,
      child: ProductScreen(productId: state.pathParameters['productId']!),
    );
  },
);
