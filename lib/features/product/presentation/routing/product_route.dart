import 'package:ecommerce/features/product/presentation/screens/product_screen.dart';
import 'package:go_router/go_router.dart';

final productRoute = GoRoute(
  path: "${ProductScreen.path}/:productId",
  builder: (context, state) => ProductScreen(productId: state.pathParameters['productId']!),
);
