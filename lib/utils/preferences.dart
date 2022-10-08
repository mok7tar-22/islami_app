import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _preferences;

  static const language = 'language';
  static const lightTheme = "light";
  static const darkTheme = "dark";
  static const theme = 'theme';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setLanguage(String locale) async =>
      await _preferences.setString(language, locale);

  static String getLanguage() {
    if (_preferences.getString(language) == null) {
      return "ar";
    }
    else {
      return _preferences.getString(language).toString();
    }
  }


  // ignore: no_leading_underscores_for_local_identifiers
  static Future saveThemePreference(ThemeMode _themeMode) async {
    String themeMode;
    if (_themeMode == ThemeMode.light) {
      themeMode = lightTheme;
    } else {
      themeMode = darkTheme;
    }
    _preferences.setString(theme, themeMode);
  }

  static ThemeMode getThemePreference() {
    String theme = _preferences.getString("theme").toString();
    if (theme == lightTheme) {
      return ThemeMode.light;
    } else {
      return ThemeMode.dark;
    }
  }
}