import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthLayoutView extends StatelessWidget {
  final List<Widget> children;
  final StatefulNavigationShell navigator;

  const AuthLayoutView({
    super.key,
    required this.children,
    required this.navigator,
  });

  @override
  Widget build(BuildContext context) {
    return children[navigator.currentIndex];
  }
}
