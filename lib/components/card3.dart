import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_app/fooderMo_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/models.dart';

class Card3 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card3({super.key, required this.recipe});

  List<Widget> createTagChips() {
    final chips = <Widget>[];
    recipe.tags.take(6).forEach((element) {
      final chip = Chip(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60.0.r),
        ),
        label: Text(
          element,
          style: FooderMoTheme.darkTextTheme.bodyLarge,
        ),
        backgroundColor: Colors.black.withOpacity(0.7),
      );
      chips.add(chip);
    });

    return chips;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 900.w, height: 1400.h),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(recipe.backgroundImage), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.6),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
            ), // TODO ADD COLUMN TEXT AND ICON
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 100.sp,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    recipe.title,
                    style: FooderMoTheme.darkTextTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: 19,
                  )
                ],
              ),
            ),
            Center(


                child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 12,
                    runSpacing: 12,
                    children: createTagChips()),

            )
          ],
        ),
      ),
    );
  }
}
