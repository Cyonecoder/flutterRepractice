
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/chap1&2/recipes.dart';

class Recipedetail extends StatefulWidget {
  final Recipe recipe;

  const Recipedetail({super.key, required this.recipe});

  @override
  State<Recipedetail> createState() => _RecipedetailState();
}
// TODO: Add _RecipeDetailState here

class _RecipedetailState extends State<Recipedetail> {
  int _sliderval =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.label)),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.all(7),
                    itemCount: widget.recipe.ingredients.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ingredient = widget.recipe.ingredients[index];
                      //TODO: add ingredient.quantity
                      return Text(
                          '${ingredient.quantity * _sliderval} ${ingredient.measure } ${ingredient.name}');
                    })),
            Slider(max: 10,min: 1,divisions: 9,value: _sliderval.toDouble(), onChanged: (newValue){

              setState(() {
                _sliderval=newValue.round();
              });


            },activeColor: Colors.green,inactiveColor: Colors.black,)
          ],
        ),
      ),
    );
  }
}
