import 'package:awesome_social/src/styles/common.dart';
import 'package:awesome_social/src/utils/colorLib.dart';
import 'package:flutter/material.dart';
import '../repo/User.dart';

class Stories extends StatelessWidget {
  final List<User> users;
  const Stories({Key key, this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorLib.primary2,
        height: 90,
        width: double.infinity,
        child: ListView.builder(
          itemCount: users.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => _buildStoryItem(users, index),
        ));
  }

  Widget _buildStoryItem(List<User> users, int index) {
    return Container(
        // color: Colors.yellow,
        margin: EdgeInsets.only(left: 10.0),
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(users[index].profileImg),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              users[index].name,
              style: TextStyle(
                  fontSize: fontSizeMedium,
                  fontWeight: FontWeight.normal,
                  color: ColorLib.textPrimary),
            )
          ],
        ));
  }
}
