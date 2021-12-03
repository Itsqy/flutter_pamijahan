import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toogleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  //variable untuk mengatur dark theme
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.blue.shade900,
    colorScheme: ColorScheme.dark(),
    brightness: Brightness.dark,
  );

  //variable untuk mengatur light theme
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    brightness: Brightness.light,
  );
}
