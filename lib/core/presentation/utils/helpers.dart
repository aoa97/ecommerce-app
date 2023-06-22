import 'package:flutter/material.dart';

Widget? elseNull({required bool condition, required Widget child}) {
  if (condition) {
    return child;
  } else {
    return null;
  }
}
