import 'package:awesome_social/src/components/singlePost/CustomAppBar.dart';
import 'package:awesome_social/src/components/singlePost/SinglePostVideo.dart';
import 'package:awesome_social/src/repo/Post.dart';
import 'package:awesome_social/src/styles/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class PostScreen extends StatefulWidget {
  PostScreen({Key key}) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    final Post post =
        // ModalRoute.of(context).settings.arguments;
        (ModalRoute.of(context).settings.arguments as Map)['post'];

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        leading: IconButton(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          icon: Icon(
            Feather.chevron_left,
            size: 28.0,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          children: [
            Container(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user2.png'),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Micheal Zimmer',
                        style: kUserName,
                      ),
                      Text('Kabul', style: kLocation),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: SinglePostVideo(post: post),
    );
  }
}
