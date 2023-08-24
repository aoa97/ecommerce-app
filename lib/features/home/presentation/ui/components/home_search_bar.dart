import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
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
