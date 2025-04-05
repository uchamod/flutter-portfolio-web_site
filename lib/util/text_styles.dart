import 'package:flutter/material.dart';
import 'package:portflio/util/colors.dart';

class TextStyleClass {
  //heading
  static const kcDisplaytext = TextStyle(
      fontSize: 57,
      color: AppColors.kcExtratextOrangeColor,
      fontWeight: FontWeight.w700);
  //title
  static const kcHeadingText = TextStyle(
      fontSize: 40,
      color: AppColors.kcTextWhiteColor,
      fontWeight: FontWeight.w600);
  //subtitle
  static const kcTitleText = TextStyle(
      fontSize: 28,
      color: AppColors.kcTextWhiteColor,
      fontWeight: FontWeight.w600);
  //discrption large
  static const kcBodyText = TextStyle(
      fontSize: 16,
      color: AppColors.kcTextWhiteColorShadow,
      fontWeight: FontWeight.w400);
  //discription small
  static const kcLableText = TextStyle(
      fontSize: 13,
      color: AppColors.kcTextWhiteColorShadow,
      fontWeight: FontWeight.w400);
  //cardtitle
  static const kcLableSpecialText = TextStyle(
      fontSize: 14,
      color: AppColors.kcExtratextOrangeColor,
      fontWeight: FontWeight.w400);
}
