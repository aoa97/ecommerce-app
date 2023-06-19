import 'package:ecommerce/core/application/api_service.dart';
import 'package:ecommerce/core/features/locale/presentation/controller/locale_cubit.dart';
import 'package:ecommerce/core/presentation/services/service_locator.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.read<LocaleCubit>().switchLocale();
          sl<ApiService>().get(endpoint: "/users");
        },
      ),
      body: Scaffold(
        appBar: AppBar(title: Text(tr(context).welcome)),
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
