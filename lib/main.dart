import 'package:flutter/material.dart';
import 'package:flutter_app/fooderMo_theme.dart';

import 'home.dart';

void main() {
  runApp(const FooderMo());
}

class FooderMo extends StatelessWidget {
  const FooderMo({super.key});
 // Todo: add state variables and functions
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // todo: create theme
    final theme = FooderMoTheme.dark();
    //todo; apply home widget

    return MaterialApp(
        theme: theme,
        title: 'FooderMo',
        home: const Home());
}}
