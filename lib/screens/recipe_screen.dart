import 'package:flutter/material.dart';
import 'package:flutter_app/components/recipes_grid_view.dart';
import '../models/models.dart';
import '../api/mock_foodermo_service.dart';
import '../components/components.dart';

class RecipeScreen extends StatelessWidget {
  final exploreService = mockFooderMoService();

  RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreService.getRecipes(),
      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return  RecipesGridView(recipes: snapshot.data??[]);
        } else {
          return  Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
