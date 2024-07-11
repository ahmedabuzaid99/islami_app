import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class MyThemeData {
  ///Light mode , dark mode , colors
  static final ThemeData LightMode = ThemeData(
    primaryColor: AppColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: AppColors.blackColor),
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: AppColors.blackColor,
          fontSize: 30,
          fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
          color: AppColors.blackColor,
          fontSize: 25,
          fontWeight: FontWeight.w700),
      bodySmall: TextStyle(
          color: AppColors.blackColor,
          fontSize: 22,
          fontWeight: FontWeight.bold),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blackColor,
    ),
  );
}
