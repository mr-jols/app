import 'package:flutter/material.dart';

Container borderedContainer({required Widget child, Color? borderColor}) {
  return Container(
    padding: const EdgeInsets.all(0),
    decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: borderColor ?? Colors.red, width: 3)),
    child: child,
  );
}
