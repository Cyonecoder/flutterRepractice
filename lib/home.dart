import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card1.dart';
import 'fooderMo_theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  static List<Widget> pages = <Widget>[
    const Card1(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Todo: add state variables and functions
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FooderMo',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      //todo: add selected tabs
      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card3')
        ],
      ),
    );
  }
}
