import 'package:flutter/material.dart';
import '../repo/Users.dart';
// import '../components/stories.dart';
import '../components/postItem.dart';
import '../repo/Posts.dart';

class LatestPosts extends StatelessWidget {
  const LatestPosts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Card(
        //   child: Container(
        //     color: Colors.white,
        //     height: 200,
        //     child: Center(
        //       child: Text("I'm a fixed list header"),
        //     ),
        //   ),
        // ),
        Expanded(
          child: ListView.builder(
            itemCount: Posts.posts.length,
            itemBuilder: (context, index) {
              return PostItem(
                posts: Posts.posts,
                users: Users.users,
                currentIndex: index,
              );
            },
          ),
        )
      ],
    );
  }
}
