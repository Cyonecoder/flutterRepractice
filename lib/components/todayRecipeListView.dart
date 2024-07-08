import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components.dart';
import '../models/models.dart';

class TodayRecipeListView extends StatelessWidget {
  final List<ExploreRecipe> recipes;

  const TodayRecipeListView({
    super.key,
    required this.recipes,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recipes of the Day 🍳',
              style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 16),
          Container(
            height: 1050.h,
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: recipes.length,
              itemBuilder: (context, index) {

                final recipe = recipes[index];
                return buildCard(recipe);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 16);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: recipe);
    } else {
      throw Exception('This card doesn\'t exist yet');
    }
  }
}
//
// class TodayRecipeListview extends StatelessWidget {
//   final List<ExploreRecipe> recipes;
//
//   const TodayRecipeListview({
//     super.key,
//     required this.recipes,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(
//         left: 16.w,
//         right: 16.w,
//         top: 16.h,
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Recipes of the Day 🍳',
//             style: Theme.of(context).textTheme.headlineLarge,
//           ),
//           SizedBox(
//             height: 16.h,
//           ),
//           Container(
//             height: 1000.h,
//             width: double.infinity,
//             color: Colors.transparent,
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               itemCount: recipes.length,//recipes.length,
//               itemBuilder: (context, index) {
//                 final recipe = recipes[index];
//
//                 print(recipe);
//                 return  buildCard(recipe);
//               },
//               separatorBuilder: (context, index) {
//                 return SizedBox(
//                   width: 16.w,
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildCard(ExploreRecipe recipe) {
//     if (recipe.cardType == RecipeCardType.card1) {
//       return Card1(recipe: recipe);
//     } else if (recipe.cardType == RecipeCardType.card2) {
//       return Card2(recipe: recipe);
//     } else if (recipe.cardType == RecipeCardType.card3) {
//       return Card3(recipe: recipe);
//     } else {
//       throw Exception('This card dosen\'t exist yet');
//     }
//   }
// }
