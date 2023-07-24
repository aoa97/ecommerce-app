import 'package:ecommerce/features/product/presentation/screens/product_screen.dart';
import 'package:go_router/go_router.dart';

final productRouter = GoRoute(
  path: "/products/:productId",
  builder: (context, state) => ProductScreen(productId: state.pathParameters['productId']!),
);
