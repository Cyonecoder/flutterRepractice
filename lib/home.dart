
import 'package:flutter/material.dart';
import 'package:flutter_app/components/card2.dart';
import 'package:flutter_app/screens/explore_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/card1.dart';
import 'components/card3.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Todo: add state variables and functions
  int _selectedIndex = 0;


  static List<Widget> pages = <Widget>[
     ExploreScreen(),
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
    ScreenUtil.init(context,designSize: Size(1080,2340));
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
