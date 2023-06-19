import 'package:ecommerce/core/presentation/utils/sizes.dart';
import 'package:flutter/material.dart';

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
        dimension: Sizes.paddingX16,
        child: const CircularProgressIndicator(color: Colors.white),
      );
}
