import 'package:flutter/material.dart';
import 'package:flutter_app/authorcard.dart';
import 'package:flutter_app/fooderMo_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          width: 350.w,
          height: 450.h,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Authorcard(
              authorname: 'Simon Frits',
              title: 'Smoothies Drink Tender',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
          Expanded(child: Stack(children: [

            Positioned(bottom: 16.h,right: 16.w,child: Text('Recipe',style: FooderMoTheme.lightTextTheme.headlineLarge,))
,            Positioned(bottom: 70.h,left: 16.w,child: RotatedBox(quarterTurns: 3,child: Text('Smoothies',style: FooderMoTheme.lightTextTheme.headlineLarge)))

          ],))],
        ),
      ),
    );
  }
}
