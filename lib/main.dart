import 'package:cookery/screen/DianasScreen.dart';
import 'package:cookery/screen/HomeScreen.dart';
import 'package:cookery/screen/HomeScreen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: const HomeScreen2(title: 'Willkommen bei Cookery'),
      home: const DianasScreen(title: 'Dianas Screen')
    );
  }
}
