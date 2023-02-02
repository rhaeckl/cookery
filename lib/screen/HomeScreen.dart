import 'package:flutter/material.dart';

import '../widget/CookeryCard.dart';
import '../widget/CookeryTitle.dart';
import '../widget/SearchFieldWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  children: List.generate(4, (index) => const CookeryCard()))),
          const CookeryTitle(
            title: 'Letzte Kategorien',
          ),
          Flexible(
              child: GridView.count(
                  childAspectRatio: 1.5,
                  padding: const EdgeInsets.fromLTRB(17, 10, 17, 0),
                  crossAxisCount: 2,
                  children: List.generate(4, (index) => const CookeryCard()))),
        ],
      ),
      // bottomNavigationBar: CustomNavigationBar(this).build(context),
    );
  }
}
