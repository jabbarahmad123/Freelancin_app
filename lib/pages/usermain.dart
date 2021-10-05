import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pakfiver/pages/home.dart';
import 'home.dart';
import 'search.dart';
import 'addproject.dart';
import 'inbox.dart';
import 'menu.dart';

class usermain extends StatefulWidget {
  const usermain({Key? key}) : super(key: key);

  @override
  _usermainState createState() => _usermainState();
}

class _usermainState extends State<usermain> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Addproject(),
    Inbox(),
    Menu(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(2000, 34, 116, 135),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Color.fromARGB(2000, 34, 116, 135),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add project',
            backgroundColor: Color.fromARGB(2000, 34, 116, 135),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Inbox',
            backgroundColor: Color.fromARGB(2000, 34, 116, 135),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
