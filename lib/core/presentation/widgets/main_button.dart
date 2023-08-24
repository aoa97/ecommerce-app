import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  final bool loading;

  const MainButton({super.key, this.onPressed, required this.label, this.loading = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: loading ? _buildLoader() : Text(label.toUpperCase()),
    );
  }

  _buildLoader() => SizedBox.square(
        dimension: 16.h,
        child: const CircularProgressIndicator(color: Colors.white, strokeWidth: 1.9),
      );
}
