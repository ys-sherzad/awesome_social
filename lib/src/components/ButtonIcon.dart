import 'package:flutter/material.dart';
import '../styles/common.dart';

class ButtonIcon extends StatelessWidget {
  final Icon icon;
  final Color iconColor;
  final Function() onPress;

  const ButtonIcon({Key key, this.icon, this.iconColor, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      // shadowColor: Colorlib.shadow,
      borderRadius: BorderRadius.circular(32.0),
      clipBehavior: Clip.hardEdge,
      color: Theme.of(context).primaryColor,
      child: Ink(
        height: 40,
        width: 40,
        decoration: const ShapeDecoration(
          shape: CircleBorder(),
        ),
        child: IconButton(
          iconSize: kIconSize,
          icon: icon,
          color: iconColor,
          onPressed: onPress,
        ),
      ),
    );
  }
}
