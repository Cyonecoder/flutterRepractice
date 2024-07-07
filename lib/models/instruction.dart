part of 'explore_recipe.dart';
class Instruction {
  String imageUrl;
  String description;
  int timesInMinutes;

  Instruction(
      {required this.imageUrl,
      required this.description,
      required this.timesInMinutes});

  factory Instruction.fromJson(Map<String, dynamic> json) {
    return Instruction(
        imageUrl: json['imageUrl'] ?? '',
        description: json['description'],
        timesInMinutes: json['timesInMinutes'] ?? 0);
  }
}
