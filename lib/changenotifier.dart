import 'package:flutter/material.dart';

enum ThemeModeType { light, dark }

class ThemeProvider with ChangeNotifier {
  ThemeModeType _themeModeType = ThemeModeType.light;

  ThemeModeType get themeModeType => _themeModeType;

  ThemeMode get themeMode {
    return _themeModeType == ThemeModeType.light
        ? ThemeMode.light
        : ThemeMode.dark;
  }

  void toggleTheme() {
    _themeModeType = _themeModeType == ThemeModeType.light
        ? ThemeModeType.dark
        : ThemeModeType.light;
    notifyListeners();
  }
}
