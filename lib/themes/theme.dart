import 'package:flutter/material.dart';

class AppTheme {
  static const color = Colors.deepPurple;

  static final lightTheme = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: color),
  );

  static final darkTheme = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: color,
      brightness: Brightness.dark,
    ),
  );
}
