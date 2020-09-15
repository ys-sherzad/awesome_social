import 'package:awesome_social/src/components/multi_manager/flick_multi_player.dart';
// import 'package:awesome_social/src/components/video2.dart';
import 'package:awesome_social/src/repo/Post.dart';
import 'package:awesome_social/src/styles/common.dart';
import 'package:flutter/material.dart';
import '../multi_manager/flick_multi_manager.dart';

class SinglePostVideo extends StatefulWidget {
  final Post post;
  SinglePostVideo({Key key, this.post}) : super(key: key);

  @override
  _SinglePostVideoState createState() => _SinglePostVideoState();
}

class _SinglePostVideoState extends State<SinglePostVideo> {
  FlickMultiManager flickMultiManager;

  @override
  void initState() {
    super.initState();
    flickMultiManager = FlickMultiManager();
  }

  @override
  Widget build(BuildContext context) {
    print('video >>>> ${widget.post.toString()}');
    return Container(
      height: 360,
      child: ClipRRect(
        borderRadius: kCardBorderRadius,
        child: FlickMultiPlayer(
          url: widget.post.video,
          flickMultiManager: flickMultiManager,
          image: widget.post.image,
        ),
      ),
    );
  }
}
