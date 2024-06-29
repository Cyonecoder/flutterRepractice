import 'package:flutter/material.dart';


void main() {
  runApp(const FooderMo());
}

class FooderMo extends StatelessWidget {
  const FooderMo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // todo: create theme
    //todo; apply home widget

    return MaterialApp(
        title: 'FooderMo',
        home: Scaffold(
            appBar: AppBar(
          title: Text('Flutter Demo Home Page'),
        ),body: const Center(child: Text('Let\'s get cooking '),),));
  }
}
