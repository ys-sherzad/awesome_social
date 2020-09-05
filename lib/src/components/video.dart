import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  final String videoPath;
  Video({Key key, this.videoPath}) : super(key: key);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    print('ON INIT IS RUNNING');
    _controller = VideoPlayerController.asset(widget.videoPath);

    // _controller.addListener(() {
    //   setState(() {});
    // });
    _controller.setLooping(false);
    _controller.initialize().then((_) => setState(() {}));
    // _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: Stack(
          children: [VideoPlayer(_controller)],
        ),
      ),
    );
  }
}
