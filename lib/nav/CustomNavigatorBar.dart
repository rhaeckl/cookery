import 'package:cookery/main.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends State {
  int _selectedIndex = 0;
  State<MyHomePage> state;

  CustomNavigationBar(this.state);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 0,
      iconSize: 30,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: '',
        ),
      ],
      currentIndex: 0,
      // selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
