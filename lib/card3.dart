import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 350.w, height: 450.h),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag2.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Stack(
          children: [
            Container(
              color: Colors.black.withOpacity(.6),
            ),
          ],
        ),
      ),
    );
  }
}
