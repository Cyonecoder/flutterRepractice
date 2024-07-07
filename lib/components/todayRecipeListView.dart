import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/components.dart';
import '../models/models.dart';

class TodayRecipeListview extends StatelessWidget {
  final List<ExploreRecipe> recipes;

  const TodayRecipeListview({
    super.key,
    required this.recipes,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 16.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipes of the Day 🍳',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 1000.h,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
  // todo: add buildCard() widget here
}
