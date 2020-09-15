import 'package:flutter/material.dart';
import '../repo/Users.dart';
// import '../components/stories.dart';
import '../components/postItem.dart';
import '../repo/Posts.dart';

import '../components/multi_manager/flick_multi_manager.dart';
// import '../components/multi_manager/flick_multi_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class LatestPosts extends StatefulWidget {
  LatestPosts({Key key}) : super(key: key);

  @override
  _LatestPostsState createState() => _LatestPostsState();
}

class _LatestPostsState extends State<LatestPosts> {
  FlickMultiManager flickMultiManager;

  @override
  void initState() {
    super.initState();
    flickMultiManager = FlickMultiManager();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ObjectKey(flickMultiManager),
      onVisibilityChanged: (visibility) {
        // print('visibity >>> ' + visibility.visibleFraction.toString());
        if (visibility.visibleFraction == 0 && this.mounted) {
          flickMultiManager.pause();
        }
      },
      child:
          // Container(
          Expanded(
        child: ListView.builder(
          itemCount: Posts.posts.length,
          itemBuilder: (context, index) {
            return PostItem(
              flickMultiManager: flickMultiManager,
              posts: Posts.posts,
              users: Users.users,
              currentIndex: index,
            );
          },
        ),
      ),
      // ),
    );
  }
}

// class LatestPosts extends StatelessWidget {
//   const LatestPosts({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
// Expanded(
//   child: ListView.builder(
//     itemCount: Posts.posts.length,
//     itemBuilder: (context, index) {
//       return PostItem(
//         posts: Posts.posts,
//         users: Users.users,
//         currentIndex: index,
//       );
//     },
//   ),
// )
//       ],
//     );
//   }
// }
