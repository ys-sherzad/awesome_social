import 'package:flutter/material.dart';
import '../repo/Post.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../styles/common.dart';

class PostItemHeader extends StatelessWidget {
  final Post post;
  const PostItemHeader({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      // color: Colors.yellow,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(post.owner.profileImg),
          ),
          SizedBox(
            width: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                post.owner.name,
                style: kUserName,
              ),
              // SizedBox(height: 1.0),
              Text(
                post.location,
                style: kLocation,
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Icon(Feather.more_vertical),
        ],
      ),
    );
  }
}
