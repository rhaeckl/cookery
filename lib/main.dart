import 'package:cookery/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Cookery",
        theme: ThemeData(primarySwatch: Colors.cyan, useMaterial3: true),
        home: const SplashScreen());
  }
}
