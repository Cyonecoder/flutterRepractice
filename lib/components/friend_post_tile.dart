import 'package:flutter/material.dart';
import 'package:flutter_app/components/components.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/models.dart';

class FriendPostTile extends StatelessWidget {
  final Post post;

  const FriendPostTile({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleImage(
          imageProvider: AssetImage(post.profileImageUrl),
          imageRadius: 65.r,
        ),
        SizedBox(
          width: 30.w,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.comment),
            Text(
              '${post.timestamp} mins ago',
              style: TextStyle(fontWeight: FontWeight.w700),
            )
          ],
        ))
      ],
    );
  }
}
