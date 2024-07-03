import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/circle_image.dart';
import 'package:flutter_app/fooderMo_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Authorcard extends StatelessWidget {
  final String authorname;
  final String title;
  final ImageProvider? imageProvider;

  const Authorcard(
      {super.key,
      required this.authorname,
      required this.title,
      this.imageProvider});

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
                imageProvider: imageProvider,
                imageRadius: 28.r,
              ),
              SizedBox(
                width: 8.w,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(authorname,style: FooderMoTheme.lightTextTheme.headlineMedium,),
                  Text(title,style: FooderMoTheme.lightTextTheme.headlineSmall,)

                ],
              ),],
          ),

          IconButton(onPressed: (){
            const snackBar =SnackBar(content: Text('Favorite Pressed'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);

          }, icon: const Icon(Icons.favorite_border),iconSize: 30,color: Colors.grey[400],),

        ],
      ),
    );
  }
}
