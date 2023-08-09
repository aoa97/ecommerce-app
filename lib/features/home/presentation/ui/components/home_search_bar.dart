import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Sizes.radiusMd),
      child: ReactiveTextField(
        formControl: FormControl(),
        decoration: InputDecoration(
          prefixIcon: IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          hintText: "Search Salla",
        ),
      ),
    );
  }
}
