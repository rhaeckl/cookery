import 'package:cookery/screen/AddRecipeScreen.dart';
import 'package:cookery/screen/HomeScreen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          useMaterial3: true
        ),
        home: const HomeScreen2(title: 'Willkommen bei Cookery'));
  }
}