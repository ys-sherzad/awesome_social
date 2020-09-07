// import 'package:awesome_social/src/components/multi_manager/flick_multi_manager.dart';
import './multi_manager/flick_multi_player.dart';
import './multi_manager/flick_multi_manager.dart';
import 'package:flutter/material.dart';
import '../repo/Post.dart';

class Video2 extends StatelessWidget {
  final FlickMultiManager flickMultiManager;
  final Post post;
  const Video2({Key key, this.flickMultiManager, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      // margin: EdgeInsets.only(bottom: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0)),
        child: FlickMultiPlayer(
          url: post.video,
          flickMultiManager: flickMultiManager,
          image: post.image,
        ),
      ),
    );
  }
}

// class Video2 extends StatefulWidget {
//   final
//   Video2({Key key}) : super(key: key);

//   @override
//   _Video2State createState() => _Video2State();
// }

// class _Video2State extends State<Video2> {
//   FlickMultiManager flickMultiManager;

//   @override
//   void initState() {
//     super.initState();
//     flickMultiManager = FlickMultiManager();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 400,
//       child: ClipRRect(
//        borderRadius: BorderRadius.circular(5),
//        child: FlickMultiPlayer(

//        )),
//     );
//   }
// }
