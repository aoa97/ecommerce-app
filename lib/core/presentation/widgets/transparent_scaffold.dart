import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TransparentScaffold extends StatelessWidget {
  final Widget body;
  final bool? darkIcons;

  const TransparentScaffold({
    super.key,
    required this.body,
    this.darkIcons = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: darkIcons! ? Brightness.light : Brightness.dark,
          statusBarIconBrightness: darkIcons! ? Brightness.dark : Brightness.light,
        ),
      ),
      body: body,
    );
  }
}
