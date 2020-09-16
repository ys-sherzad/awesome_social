import 'package:awesome_social/src/utils/colorLib.dart';
import 'package:flutter/material.dart';
import '../styles/common.dart';

class ButtonIcon extends StatelessWidget {
  final Icon icon;
  final Color iconColor;
  final Function() onPress;
  final double iconSize;
  // final double

  const ButtonIcon(
      {Key key,
      this.icon,
      this.iconColor,
      this.onPress,
      this.iconSize = kIconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      clipBehavior: Clip.hardEdge,
      shape: CircleBorder(),
      child: IconButton(
        iconSize: iconSize,
        icon: icon,
        onPressed: onPress,
      ),
    );
    // Material(
    //   shadowColor: Colors.blue,
    //   borderRadius: BorderRadius.circular(32.0),
    //   clipBehavior: Clip.hardEdge,
    //   // color: ColorLib.primary2,
    //   // color: Colors.blue,
    //   child: Ink(
    //     // height: 30,
    //     // width: 30,
    //     decoration: const ShapeDecoration(
    //       shape: CircleBorder(),
    //     ),
    //     child:
    //   ),
  }
}
