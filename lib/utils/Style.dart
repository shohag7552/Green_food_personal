import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Color.dart';
import 'Const.dart';

TextStyle sectionTitle() {
  return TextStyle(
      fontSize: sectionTitleFontSize,
      fontWeight: FontWeight.w900,
      color: sectionTitleColor,
      letterSpacing: 0.18,
      height: 1.5);
}

TextStyle sectionTitleSmall() {
  return TextStyle(
      fontSize: sectionTitleFontSize - 2,
      fontWeight: FontWeight.w400,
      color: sectionTitleColor,
      letterSpacing: 0.18,
      height: 1.5);
}

TextStyle sectionSubTitle() {
  return TextStyle(
      fontSize: sectionTitleFontSize,
      fontWeight: FontWeight.w400,
      color: sectionTitleColor.withOpacity(0.5),
      letterSpacing: 0.18,
      height: 1.5);
}

TextStyle drawerTitle() {
  return TextStyle(
      fontSize: sectionTitleFontSize + 2,
      fontWeight: FontWeight.w700,
      color: white,
      letterSpacing: 0.18,
      height: 1.5);
}

TextStyle drawerButtonText() {
  return TextStyle(
      fontSize: sectionSpacing,
      fontWeight: FontWeight.w400,
      color: backgroundSecondary,
      letterSpacing: 0.18,
      height: 1.5);
}

TextStyle drawerListText() {
  return TextStyle(
      fontWeight: FontWeight.w400,
      color: black,
      letterSpacing: 0.18,
      height: 1.5);
}

TextStyle appSubtitleText() {
  return TextStyle(
      fontWeight: FontWeight.w400,
      color: white,
      letterSpacing: 0.18,
      height: 1.5);
}
