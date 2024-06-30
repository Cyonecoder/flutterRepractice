import 'package:flutter/cupertino.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'learn to make the perfect bread.';
  final String chef = 'Ray Khassal';

  @override
  Widget build(BuildContext context) {
    return Center(
      //todo: decorate container
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/mag1.png',
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10))//todo: add stack of text
        ),
      ),
    );
  }
}
