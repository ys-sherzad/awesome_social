import 'package:awesome_social/src/components/ButtonIcon.dart';
import 'package:awesome_social/src/components/multi_manager/flick_multi_player.dart';
// import 'package:awesome_social/src/components/video2.dart';
import 'package:awesome_social/src/repo/Post.dart';
import 'package:awesome_social/src/styles/common.dart';
import 'package:awesome_social/src/utils/colorLib.dart';
import 'package:flutter/material.dart';
import '../multi_manager/flick_multi_manager.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

const loremIpsum =
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.";

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

  Widget _iconAndText(Icon icon, {String text}) {
    return Row(
      children: [
        icon,
        SizedBox(
          width: 5,
        ),
        Text(
          '129',
          style: kPostActionButtonText,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 360,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0)),
            child: FlickMultiPlayer(
              url: widget.post.video,
              flickMultiManager: flickMultiManager,
              image: widget.post.image,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 8.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    _iconAndText(Icon(
                      Feather.heart,
                      size: kIconSize,
                      color: ColorLib.textPrimary,
                    )),
                    SizedBox(
                      width: 20.0,
                    ),
                    _iconAndText(Icon(
                      Feather.message_circle,
                      size: kIconSize,
                      color: ColorLib.textPrimary,
                    )),
                    SizedBox(
                      width: 20.0,
                    ),
                    _iconAndText(Icon(
                      Feather.eye,
                      size: kIconSize,
                      color: ColorLib.textPrimary,
                    )),
                  ],
                ),
              ),
              ButtonIcon(
                onPress: () {},
                icon: Icon(
                  Feather.share_2,
                  color: ColorLib.textPrimary,
                ),
                iconColor: ColorLib.textPrimary,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          height: 46.0,
          child: Row(
            children: [
              Container(
                height: 50.0,
                width: 5.0,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Behind the scenes',
                    style: kUserName,
                  ),
                  Text(
                    'London',
                    style: kLocation,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: Text(
                loremIpsum,
                style: TextStyle(
                  fontSize: fontSizeLarge,
                  height: 1.6,
                  color: ColorLib.textSecondary,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
