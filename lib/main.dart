import 'package:flutter/material.dart';
import 'package:flutter_app/fooderMo_theme.dart';

void main() {
  runApp(const FooderMo());
}

class FooderMo extends StatelessWidget {
  const FooderMo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // todo: create theme
    final theme = FooderMoTheme.light();
    //todo; apply home widget

    return MaterialApp(
        theme: theme,
        title: 'FooderMo',
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Flutter Demo Home Page',
              style: theme.textTheme.bodySmall,
            ),
          ),
          body:  Center(
            child: Text(
              'Let\'s get cooking ',
              style: theme.textTheme.headlineLarge
            ),
          ),
        ));
  }
}
