import 'package:flutter/material.dart';
import 'package:flutter_app/components/components.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/models.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> firendPosts;

  const FriendPostListView({super.key, required this.firendPosts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Social Chefs 👩‍🍳',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 16.h,
          ),
          ListView.separated(
             primary: false,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index){
               final post =firendPosts[index];
               return FriendPostTile(post: post);
              },
              separatorBuilder: (context,index){
               return SizedBox(height: 25.h,);

              },
              itemCount: firendPosts.length),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}
