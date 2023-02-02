import 'package:cookery/screen/HomeScreen.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends State {
  int _selectedIndex = 0;
  State<HomeScreen> state;

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
      iconSize: 25,
      backgroundColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black45),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box, color: Colors.black45),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book, color: Colors.black45),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu, color: Colors.black45),
          label: '',
        ),
      ],
      currentIndex: 0,
      // selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
