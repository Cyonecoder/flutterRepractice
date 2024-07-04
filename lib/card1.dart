import 'package:flutter/material.dart';
import 'package:flutter_app/fooderMo_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'learn to make the perfect bread.';
  final String chef = 'Ray Khassal';

  @override
  Widget build(BuildContext context) {
    return Center(
      //todo: decorate container
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints.expand(
          width: 350.w,
          height: 450.h,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/magazine_pics/mag1.png',
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        //todo: add stack of text
        child: Stack(
          children: [
            Text(
              category,
              style: FooderMoTheme.darkTextTheme.bodyLarge,
            ),
            Positioned(
              child:
                  Text(title, style: FooderMoTheme.darkTextTheme.headlineMedium),
              top: 20,
            ),
            Positioned(
              child: Text(description,
                  style: FooderMoTheme.darkTextTheme.headlineSmall),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child:
                  Text(chef, style: FooderMoTheme.darkTextTheme.headlineSmall),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
