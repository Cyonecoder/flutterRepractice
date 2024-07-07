import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app/fooderMo_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'circle_image.dart';

class Authorcard extends StatefulWidget {
  final String authorname;
  final String title;
  final ImageProvider? imageProvider;

  const Authorcard(
      {super.key,
      required this.authorname,
      required this.title,
      this.imageProvider});

  @override
  State<Authorcard> createState() => _AuthorcardState();
}

class _AuthorcardState extends State<Authorcard> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16).w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 80.r,
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorname,
                    style: FooderMoTheme.lightTextTheme.headlineMedium,
                  ),
                  Text(
                    widget.title,
                    style: FooderMoTheme.lightTextTheme.headlineSmall,
                  )
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              const  snackBar = SnackBar(content: Text('Favorite Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              setState(() {
                _isFavorite=!_isFavorite;
              });
            },
            icon:  Icon(_isFavorite ? Icons.favorite:Icons.favorite_border),
            iconSize: 30,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
