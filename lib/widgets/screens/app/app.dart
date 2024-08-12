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
    NewNotesScreen(),
  ];

  int _currentScreen = 0;

  final _pagescontroller = PageController();

  void _onClicked(int index) {
    setState(() {
      _currentScreen = index;
      _pagescontroller.animateToPage(
        index,
        duration: const Duration(milliseconds: 200), 
        curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 28, 28),
      //TODO сделать так, чтобы содержание бара менялось в зависимости от экрана
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 28, 28),
        title: const Text(
          'Last notes',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: PageView(
        controller: _pagescontroller,
        children: _screens,
        
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 28, 28, 28),
        selectedLabelStyle: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 12,
          fontWeight: FontWeight.w600,

        ),
        showUnselectedLabels: false,
        currentIndex: _currentScreen,
        onTap: _onClicked,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_outlined,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
            label: 'New',
          ),
        ],

      ),
    );
  }
}