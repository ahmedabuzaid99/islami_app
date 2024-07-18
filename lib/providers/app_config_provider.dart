import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
//// data
  String appLanguage = 'en';
  ThemeMode appTheme = ThemeMode.light;

  void changeTheme(ThemeMode newMode) {
    if (appTheme == newMode) {
      return;
    }
    appTheme = newMode;
    notifyListeners();
  }

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }

  bool isDarkMode() {
    return appTheme == ThemeMode.dark;
  }
}
