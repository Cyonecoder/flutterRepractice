
import 'package:flutter/material.dart';
import 'package:flutter_app/components/todayRecipeListView.dart';

import '../api/mock_foodermo_service.dart';
import '../models/models.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = mockFooderMoService();

  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(

        future: mockService.getExploreData(),
        builder: (context, AsyncSnapshot<ExploreData> snapshot) {

         if(snapshot.connectionState == ConnectionState.done){var recipes =  snapshot.data?.todayRecipe ?? [];
         print('recipe1 '+recipes.toString()); return Center(
            child: Container(
              child:TodayRecipeListView(recipes: recipes )
            ),
          );}else{

           return const Center(child: CircularProgressIndicator(),);
         }
        });
  }
}
