import 'package:bkk_drugstore_app/styles/app_colors.dart';
import 'package:bkk_drugstore_app/styles/app_styles.dart';
import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  DefaultTextStyle get defaultTextStyle => DefaultTextStyle.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  NavigatorState get navigator => Navigator.of(this);

  ThemeData get themeData => Theme.of(this);

  AppColors get appColors => AppColors();

  AppStyles get appStyles => AppStyles();
}
