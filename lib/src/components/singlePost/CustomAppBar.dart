// import 'package:awesome_social/src/components/ButtonIcon.dart';
import 'package:awesome_social/src/components/ButtonIcon.dart';
import 'package:awesome_social/src/styles/common.dart';
// import 'package:awesome_social/src/styles/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
// import '../ButtonIcon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({Key key, @required this.height}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0.0,
      // bottomOpacity: 0.4,
      // excludeHeaderSemantics: true,
      // automaticallyImplyLeading: true,
      leading: IconButton(
        // enableFeedback: false,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        icon: Icon(
          Feather.chevron_left,
          size: 28.0,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      // leading: ButtonIcon(
      //   onPress: () => {},
      //   icon: Icon(Feather.chevron_left),
      //   iconColor: Colors.white,
      // ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
    );
  }
}
