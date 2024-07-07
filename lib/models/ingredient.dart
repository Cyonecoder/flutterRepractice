part of 'exploreRecipe.dart';

class Ingredients {
  String title;
  String imageUrl;
  String source;

  Ingredients(
      {required this.title, required this.imageUrl, required this.source});

  factory Ingredients.fromJson(Map<String, dynamic> json) {
    return Ingredients(
        imageUrl: json['imageUrl'] ?? '',
        title: json['title'] ?? '',
        source: json['source'] ?? '');
  }
}
