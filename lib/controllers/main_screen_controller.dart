import 'package:flutter/material.dart';

import '../views/screens/hadeth/hadeth_screen.dart';
import '../views/screens/quran/quran_screen.dart';
import '../views/screens/radio_screen.dart';
import '../views/screens/settings_screen.dart';
import '../views/screens/tasbeeh_screen.dart';

class MainScreenController with ChangeNotifier {
  List screens = [
    QuranScreen(),
    HadethScreen(),
    TasbeehScreen(),
    RadioScreen(),
    SettingsScreen()
  ];
  int currentScreen = 0;

  void ChangeScreen(value) {
    currentScreen = value;
    notifyListeners();
  }
}
