import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './new_notes.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // все экраны приложения
  final _screens = <Widget>[
    NewNotesScreen(),
  ];

  int _currentScreen = 0;

  final _pagescontroller = PageController();

  void _onClicked(int index) {
    setState(() {
      _currentScreen = index;
      _pagescontroller.animateToPage(
        index,
        duration: Duration(milliseconds: 300), 
        curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pagescontroller,
        children: _screens,
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen,
        onTap: _onClicked,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_outlined,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
          ),
        ],

      ),
    );
  }
}