import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_app/models/post.dart';

import '../models/exploreRecipe.dart';
import '../models/exploredata.dart';
import '../models/simplerecipe.dart';

class mockFooderMoService{

  Future<ExploreData> getExploreData() async{


    final todayRecipe = await _getTodayRecipe();
    final friendsPost = await _getFriendsFeed();

    return ExploreData(todayRecipe, friendsPost);

  }


}

Future<List<ExploreRecipe>>_getTodayRecipe() async{
  await Future.delayed(const Duration(milliseconds: 1000));
  // Load json from file system
  final dataString =
  await _loadAsset('assets/sample_data/sample_explore_recipes.json');
  final Map<String, dynamic> json = jsonDecode(dataString);
  if (json['recipes'] != null) {
    final recipes = <ExploreRecipe>[];
    json['recipes'].forEach((v) {
      recipes.add(ExploreRecipe.fromJson(v));
    });
    return recipes;
  } else {
    return [];
  }
}
Future<List<Post>>_getFriendsFeed() async{
  await Future.delayed(const Duration(milliseconds: 1000));
  // Load json from file system
  final dataString =
  await _loadAsset('assets/sample_data/sample_friends_feeds.json');
  final Map<String, dynamic> json = jsonDecode(dataString);
  if (json['feed'] != null) {
    final posts = <Post>[];
    json['feed'].forEach((v) {
      posts.add(Post.fromJson(v));
    });
    return posts;
  } else {
    return [];
  }
}
// Get the sample recipe json to display in ui
Future<List<SimpleRecipe>> getRecipes() async {
  // Simulate api request wait time
  await Future.delayed(const Duration(milliseconds: 1000));
  // Load json from file system
  final dataString =
  await _loadAsset('assets/sample_data/sample_recipes.json');
  // Decode to json
  final Map<String, dynamic> json = jsonDecode(dataString);

  // Go through each recipe and convert json to SimpleRecipe object.
  if (json['recipes'] != null) {
    final recipes = <SimpleRecipe>[];
    json['recipes'].forEach((v) {
      recipes.add(SimpleRecipe.fromJson(v));
    });
    return recipes;
  } else {
    return [];
  }
}
// Loads sample json data from file system
Future<String> _loadAsset(String path) async {
  return rootBundle.loadString(path);
}