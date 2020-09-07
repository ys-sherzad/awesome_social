import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../components/multi_manager/flick_multi_manager.dart';
import 'package:flutter/material.dart';
import '../repo/User.dart';
import '../repo/Post.dart';
import '../components/stories.dart';
import './postItemHeader.dart';
import './video2.dart';
// import './video.dart';

class PostItem extends StatelessWidget {
  final FlickMultiManager flickMultiManager;
  final List<Post> posts;
  final List<User> users;
  final int currentIndex;
  const PostItem(
      {Key key,
      this.flickMultiManager,
      this.posts,
      this.users,
      this.currentIndex})
      : super(key: key);

  Widget _postActions() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Feather.heart),
          Icon(Feather.message_circle),
          Icon(Feather.eye),
        ],
      ),
    );
  }

  Widget _arrowRight() {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
      child: Icon(Feather.chevron_right),
    );
  }

  Widget _buildNormalPostItem(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          PostItemHeader(post: posts[currentIndex]),
          SizedBox(
            height: 2.0,
          ),
          // Video(videoPath: posts[currentIndex].video),
          Video2(
            flickMultiManager: flickMultiManager,
            post: posts[currentIndex],
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
              ),
            ),
            height: 60.0,
            child: Row(
              children: [
                _postActions(),
                SizedBox(
                  width: 90.0,
                ),
                _arrowRight(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildStoryWithPost(BuildContext context) {
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
      return _buildStoryWithPost(context);
    else
      return _buildNormalPostItem(context);
  }
}
