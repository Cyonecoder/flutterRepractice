import 'package:flutter/material.dart';
import 'package:flutter_app/components/authorcard.dart';
import 'package:flutter_app/fooderMo_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/models.dart';

class Card2 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card2({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          width: 800.w,
          height: 1400.h,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(recipe.backgroundImage),
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
              authorname: recipe.authorName,
              title:recipe.title ,
              imageProvider: AssetImage(recipe.profileImage),
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                    bottom: 16.h,
                    right: 16.w,
                    child: Text(
                      recipe.title,
                      style: FooderMoTheme.lightTextTheme.headlineLarge,
                    )),
                Positioned(
                    bottom: 70.h,
                    left: 16.w,
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(recipe.subtitle,
                            style: FooderMoTheme.lightTextTheme.headlineLarge)))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
