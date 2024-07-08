import 'package:flutter/material.dart';
import 'package:flutter_app/components/components.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(
              children: [
                TodayRecipeListView(recipes: snapshot.data?.todayRecipe ?? []),
                SizedBox(
                  height: 16.h,
                ),
                FriendPostListView(
                    firendPosts: snapshot.data?.friendsPost ?? []),

              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
