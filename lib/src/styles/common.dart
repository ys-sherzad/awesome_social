import 'package:awesome_social/src/utils/colorLib.dart';
import 'package:flutter/material.dart';

// constants values
const double radiusValueRound = 10.0;
const double radiusValueSemiRound = 4.0;
const double fontSizeLarge = 14.0;
const double fontSizeMedium = 12.0;
const double fontSizeSmall = 11.0;
const double iconSize1 = 22.0;

// Text styles
const kStoryUserName = TextStyle(
    fontSize: fontSizeLarge,
    fontWeight: FontWeight.normal,
    color: ColorLib.textPrimary);

const kUserName = TextStyle(
    fontSize: fontSizeLarge,
    fontWeight: FontWeight.bold,
    color: ColorLib.textPrimary);

const kLocation = TextStyle(
    fontSize: fontSizeMedium,
    fontWeight: FontWeight.normal,
    color: ColorLib.textSecondary);

const kPostActionButtonText =
    TextStyle(fontSize: fontSizeMedium, color: ColorLib.textPrimary);

// Border radiuses
const kCardBorderRadiusRound =
    BorderRadius.all(Radius.circular(radiusValueRound));

const kCardBorderRadiusSemiRound =
    BorderRadius.all(Radius.circular(radiusValueSemiRound));

// Icon sizes
const kIconSize = iconSize1;

// paddings
const kHorizontalOffset10 = EdgeInsets.fromLTRB(10.0, 0, 10.0, 0);
const kHorizontalOffset20 = EdgeInsets.fromLTRB(20.0, 0, 20.0, 0);
// const kPaddingAll20 = EdgeInsets.all(10.0);
