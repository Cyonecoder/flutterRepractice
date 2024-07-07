
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
          final recipes = snapshot.data?.todayRecipe ?? [];
         if(snapshot.connectionState == ConnectionState.done){ return Center(
            child: Container(
              child:TodayRecipeListview(recipes: recipes )
            ),
          );}else{

           return const Center(child: CircularProgressIndicator(),);
         }
        });
  }
}
