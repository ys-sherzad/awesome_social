import 'package:flutter/material.dart';
import '../repo/User.dart';
import '../repo/Post.dart';
import '../components/stories.dart';
import './postItemHeader.dart';
import './video.dart';

class PostItem extends StatelessWidget {
  final List<Post> posts;
  final List<User> users;
  final int currentIndex;
  const PostItem({Key key, this.posts, this.users, this.currentIndex})
      : super(key: key);

  Widget _buildNormalPostItem() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          PostItemHeader(post: posts[currentIndex]),
          SizedBox(
            height: 2.0,
          ),
          Video(videoPath: posts[currentIndex].video),
        ],
      ),
    );
  }

  Widget _buildStoryWithPost() {
    return Container(
      child: Column(
        children: [
          Stories(
            users: users,
          ),
          // Column(
          //   children: [

          //   ],
          // )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (currentIndex == 0)
      return _buildStoryWithPost();
    else
      return _buildNormalPostItem();
  }
}
