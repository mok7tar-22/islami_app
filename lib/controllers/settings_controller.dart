import 'package:flutter/material.dart';

import '../utils/preferences.dart';

class SettingsController with ChangeNotifier{
  ThemeMode mode=Preferences.getThemePreference();
  String locale=Preferences.getLanguage();

  // SettingsController()
  //     : mode = ThemeMode.light,
  //       locale = 'en';

  void changeMode(ThemeMode mode) {
    this.mode = mode;
    Preferences.saveThemePreference(this.mode);
    notifyListeners();
  }

  void changeLocale(String locale) {
    this.locale = locale;
    Preferences.setLanguage(this.locale);
    notifyListeners();
  }
}