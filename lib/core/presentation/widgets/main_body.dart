import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  final Widget child;

  const MainBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(Sizes.paddingX16),
        child: child,
      ),
    );
  }
}
