import 'package:flutter/material.dart';
import 'package:flutter_app/components/components.dart';

import '../models/models.dart';

class RecipesGridView extends StatelessWidget {
  final List<SimpleRecipe> recipes;

  const RecipesGridView({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
      child: GridView.builder(
        itemCount: recipes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index){

          final simpleRecipe = recipes[index];

          return RecipeThumbnail(recipe: simpleRecipe);

      }),
    );
  }
}
