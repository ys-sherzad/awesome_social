import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  PostScreen({Key key}) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Hello this is post screen'),
        ),
      ),
    );
  }
}
