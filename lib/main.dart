import 'package:flutter/material.dart';

import 'themes/theme.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-commerce Glossary App",
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
