import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MainTextField extends StatelessWidget {
  final FormControl formControl;
  final String label;
  final bool obsecure;
  final Widget? suffixIcon;

  const MainTextField({
    super.key,
    required this.formControl,
    required this.label,
    this.obsecure = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4).r,
        boxShadow: const [BoxShadow(offset: Offset(0, 1), blurRadius: 8, color: Color.fromRGBO(0, 0, 0, 0.05))],
      ),
      child: ReactiveTextField(
        formControl: formControl,
        obscureText: obsecure,
        decoration: InputDecoration(
          label: Text(label),
          prefix: 4.horizontalSpace,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
