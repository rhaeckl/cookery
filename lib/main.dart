import 'package:cookery/nav/CustomNavigatorBar.dart';
import 'package:cookery/widget/CookeryCard.dart';
import 'package:cookery/widget/SearchFieldWidget.dart';
import 'package:flutter/material.dart';
import 'widget/Title.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body: Column(
        children: <Widget>[
          const SearchFieldWidget(),
          const CookeryTitle(title: 'Letzte Rezepte'),
          Flexible(
              child: GridView.count(
                  childAspectRatio: 1.5,
                  padding: const EdgeInsets.fromLTRB(17, 10, 17, 0),
                  crossAxisCount: 2,
                  children:
                      List.generate(4, (index) => const LastRecipeCard()))),
          const CookeryTitle(
            title: 'Letzte Kategorien',
          ),
          Flexible(
              child: GridView.count(
                  childAspectRatio: 1.5,
                  padding: const EdgeInsets.fromLTRB(17, 10, 17, 0),
                  crossAxisCount: 2,
                  children:
                      List.generate(4, (index) => const LastRecipeCard()))),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(this).build(context),
    );
  }
}
