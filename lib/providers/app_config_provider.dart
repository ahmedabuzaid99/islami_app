import 'package:flutter/material.dart';
import 'package:islami_app/user_preferences.dart';

class AppConfigProvider extends ChangeNotifier {
//// data
  String appLanguage = 'en';
  ThemeMode appTheme = ThemeMode.light;

  void changeTheme(ThemeMode newMode) {
    if (appTheme == newMode) {
      return;
    }
    appTheme = newMode;
    UserPreferences.saveThemePreference(appTheme);
    notifyListeners();
  }

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    UserPreferences.setLanguage(appLanguage);
    notifyListeners();
  }

  bool isDarkMode() {
    return appTheme == ThemeMode.dark;
  }
}
