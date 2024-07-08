import 'package:flutter/material.dart';
import 'package:flutter_app/fooderMo_theme.dart';
import '../models/models.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Card1 extends StatelessWidget {
  final ExploreRecipe recipe;

   const Card1({super.key, required this.recipe});



  @override
  Widget build(BuildContext context) {
    return Center(

      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints.expand(
          width: 900.w,
          height: 1400.h,
        ),
        decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/magazine_pics/card_bread.jpg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Stack(
          children: [
            Text(
              recipe.subtitle,
              style: FooderMoTheme.darkTextTheme.bodyLarge,
            ),
            Positioned(
              child: Text(recipe.title,
                  style: FooderMoTheme.darkTextTheme.headlineMedium),
              top: 20,
            ),
            Positioned(
              child: Text(recipe.description,
                  style: FooderMoTheme.darkTextTheme.headlineSmall),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(recipe.authorName,
                  style: FooderMoTheme.darkTextTheme.headlineSmall),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
