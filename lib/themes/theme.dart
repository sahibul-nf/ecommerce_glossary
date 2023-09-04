import 'package:flutter/material.dart';

class AppTheme {
  static const color = Colors.deepPurple;

  static final lightTheme = ThemeData.light().copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: color),
    useMaterial3: true,
  );

  static final darkTheme = ThemeData.dark().copyWith(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: color,
      brightness: Brightness.dark,
    ),
  );
}
