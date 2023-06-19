import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/presentation/services/service_locator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Scaffold(
        body: Center(
          child: OutlinedButton(
            onPressed: sl<LocaleCubit>().switchLocale,
            child: const Text("Switch Locale"),
          ),
        ),
      ),
    );
  }
}
