import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  /////the thing i will listen to
  String languageCode = "en";

  ThemeMode modeApp = ThemeMode.light;

  void changeLanguage(String langCode) {
    languageCode = langCode;

    ////in case of we have 2 languages only
    // if (languageCode == "en") {
    //   languageCode = "ar";
    // } else {
    //   languageCode = "en";
    // }

    /////to nofify all listener
    notifyListeners();
  }

  void changeTheme(ThemeMode mode) {
    modeApp = mode;

    // if (modeApp == ThemeMode.light)
    // {
    //   modeApp = ThemeMode.dark;
    // } else
    // {
    //   modeApp = ThemeMode.light;
    // }
    notifyListeners();
  }

  String getBackground() {
    if (modeApp == ThemeMode.light)
      return "assets/images/background.png";
    else
      return "assets/images/bg_dark.png";
  }
}
