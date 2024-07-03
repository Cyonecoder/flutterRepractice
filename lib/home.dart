
import 'package:flutter/material.dart';
import 'package:flutter_app/card2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'card1.dart';
import 'card3.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Todo: add state variables and functions
  int _selectedIndex = 0;


  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    const Card3()
  ];

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
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
