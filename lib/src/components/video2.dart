// import 'package:awesome_social/src/components/multi_manager/flick_multi_manager.dart';
import './multi_manager/flick_multi_player.dart';
import './multi_manager/flick_multi_manager.dart';
import 'package:flutter/material.dart';
import '../repo/Post.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../styles/common.dart';
import 'ButtonIcon.dart';

class Video2 extends StatelessWidget {
  final FlickMultiManager flickMultiManager;
  final Post post;
  const Video2({Key key, this.flickMultiManager, this.post}) : super(key: key);

  Widget _postActions() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Feather.heart,
            size: kIconSize,
          ),
          Text(
            post.likesCount.toString(),
            style: kPostActionButtonText,
          ),
          SizedBox(
            width: 8.0,
          ),
          Icon(
            Feather.message_circle,
            size: kIconSize,
          ),
          Text(
            post.commentsCount.toString(),
            style: kPostActionButtonText,
          ),
          SizedBox(
            width: 8.0,
          ),
          Icon(
            Feather.eye,
            size: kIconSize,
          ),
          Text(
            post.viewsCount.toString(),
            style: kPostActionButtonText,
          ),
        ],
      ),
    );
  }

  _onGoToPostScreen(BuildContext context) {
    Navigator.pushNamed(context, '/post', arguments: {'post': post});
  }

  Widget _arrowRight(BuildContext context) {
    return ButtonIcon(
      onPress: () => _onGoToPostScreen(context),
      icon: Icon(Feather.chevron_right),
      iconColor: Colors.white,
    );
  }

  Widget _separator() {
    return SizedBox(width: 60.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: kCardBorderRadius,
      ),
      child: Column(
        children: [
          Container(
            height: 360,
            child: ClipRRect(
              borderRadius: kCardBorderRadius,
              child: FlickMultiPlayer(
                url: post.video,
                flickMultiManager: flickMultiManager,
                image: post.image,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            height: 60.0,
            child: Row(
              children: [
                _postActions(),
                _separator(),
                _arrowRight(context),
              ],
            ),
          )
        ],
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
