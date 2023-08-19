import 'package:flutter/material.dart';

TextTheme font([Color? color, FontWeight? weight, double? height]) {
  return TextTheme(
    headlineLarge: TextStyle(fontSize: 30, fontWeight: weight),
    headlineMedium: TextStyle(fontSize: 24, fontWeight: weight),
    headlineSmall: TextStyle(fontSize: 20, fontWeight: weight, color: color ?? Colors.black),
    titleMedium: TextStyle(fontSize: 18, fontWeight: weight, color: color ?? Colors.black),
    titleSmall: TextStyle(fontSize: 16, fontWeight: weight, color: color ?? Colors.black, height: height),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: weight, color: color ?? Colors.black),
    bodySmall: TextStyle(fontSize: 12, fontWeight: weight, color: color ?? Colors.black),
    labelSmall: TextStyle(fontSize: 10, fontWeight: weight, color: color ?? Colors.black),
  );
}
