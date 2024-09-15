import 'package:bookia/Core/Utils/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

TextStyle getHeadLineTextStyle(
    {double fontsize = 24,
    FontWeight = FontWeight.bold,
    color = AppColors.Dark}) {
  return TextStyle(
      fontFamily: 'DMSerifDisplay',
      fontSize: fontsize,
      fontWeight: FontWeight,
      color: color);
}

TextStyle getBodyTextStyle(
    {double fontsize = 18,
    FontWeight = FontWeight.normal,
    color = AppColors.Dark}) {
  return TextStyle(
      fontFamily: 'DMSerifDisplay',
      fontSize: fontsize,
      fontWeight: FontWeight,
      color: color);
}

TextStyle getSmallTextStyle(
    {double fontsize = 15,
    FontWeight = FontWeight.normal,
    color = AppColors.Dark}) {
  return TextStyle(
      fontFamily: 'DMSerifDisplay',
      fontSize: fontsize,
      fontWeight: FontWeight,
      color: color);
}
