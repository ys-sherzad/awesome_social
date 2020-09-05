import 'package:flutter/material.dart';
import '../repo/Post.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

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
              Text(post.owner.profileImg),
              SizedBox(height: 2.0),
              Text(post.location),
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
