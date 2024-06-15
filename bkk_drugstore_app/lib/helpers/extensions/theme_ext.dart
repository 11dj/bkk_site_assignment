import 'package:bkk_drugstore_app/styles/app_colors.dart';
import 'package:flutter/material.dart';

extension AppTheme on ThemeData {
  static TextStyle defaultStyle = TextStyle(
    color: AppColors().black100,
    fontFamily: 'Prompt',
  );

  TextStyle get appBarText => defaultStyle.copyWith(
        color: AppColors().blue,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  TextStyle get heading1 => defaultStyle.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w600,
      );
  TextStyle get heading2 => defaultStyle.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w600,
      );
  TextStyle get heading3 => defaultStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

  TextStyle get buttonText =>
      defaultStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600, decoration: TextDecoration.underline);
  TextStyle get textLink => defaultStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.underline,
      );

  TextStyle get body => defaultStyle.copyWith(
        fontSize: 16,
      );
  TextStyle get body14 => defaultStyle.copyWith(
        fontSize: 14,
      );
  TextStyle get body13 => defaultStyle.copyWith(
        fontSize: 13,
      );
  TextStyle get body12 => defaultStyle.copyWith(
        fontSize: 12,
      );
  TextStyle get body14Bold => defaultStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold);
  TextStyle get bodyBold => defaultStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );
  TextStyle get body2 => defaultStyle.copyWith(fontSize: 14);
  TextStyle get caption => defaultStyle.copyWith(fontSize: 12);
  TextStyle get caption11 => defaultStyle.copyWith(fontSize: 11);
  TextStyle get caption10 => defaultStyle.copyWith(fontSize: 10);
  TextStyle get captionSemibold => defaultStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      );

  AppColors get appColors => AppColors();
}
