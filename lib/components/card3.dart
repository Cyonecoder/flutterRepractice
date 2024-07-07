import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_app/fooderMo_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 1000.w, height: 1400.h),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/magazine_pics/mag2.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.6),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
            ), // TODO ADD COLUMN TEXT AND ICON
            Container(
              padding: EdgeInsets.all(16),
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
                    'Recipe Trends',
                    style: FooderMoTheme.darkTextTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    Chip(
                        label: Text(
                          'Healthy',
                          style: FooderMoTheme.darkTextTheme.bodyLarge,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {
                          log('delete');
                        },
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                             60.0.r), // Adjust the radius as needed
                          // This removes the white border
                        )),
                    Chip(
                        label: Text(
                          'Vegan',
                          style: FooderMoTheme.darkTextTheme.bodyLarge,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {
                          log('delete');
                        },
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                             60.0.r), // Adjust the radius as needed
                          // This removes the white border
                        )),
                    Chip(
                        label: Text(
                          'Carrot',
                          style: FooderMoTheme.darkTextTheme.bodyLarge,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                             60.0.r), // Adjust the radius as needed
                          // This removes the white border
                        )),
                    Chip(
                        label: Text(
                          'Greens',
                          style: FooderMoTheme.darkTextTheme.bodyLarge,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                             60.0.r), // Adjust the radius as needed
                          // This removes the white border
                        )),
                    Chip(
                        label: Text(
                          'Wheat',
                          style: FooderMoTheme.darkTextTheme.bodyLarge,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                             60.0.r), // Adjust the radius as needed
                          // This removes the white border
                        )),
                    Chip(
                        label: Text(
                          'Pescetarian',
                          style: FooderMoTheme.darkTextTheme.bodyLarge,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                             60.0.r), // Adjust the radius as needed
                          // This removes the white border
                        )),
                    Chip(
                        label: Text(
                          'Mint',
                          style: FooderMoTheme.darkTextTheme.bodyLarge,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                             60.0.r), // Adjust the radius as needed
                          // This removes the white border
                        )),
                    Chip(
                        label: Text(
                          'Lemongrass',
                          style: FooderMoTheme.darkTextTheme.bodyLarge,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                             60.0.r), // Adjust the radius as needed
                          // This removes the white border
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
