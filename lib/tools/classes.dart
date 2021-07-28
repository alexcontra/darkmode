import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Style {
  static ThemeData themedata(bool isDarkTheme) {
    return ThemeData(
      primaryColor: isDarkTheme ? Colors.black : Colors.blue,
      scaffoldBackgroundColor: isDarkTheme ? Color(0xFF222222) : Colors.white,
    );
  }
}

class ThemePreference {
  static const THEME_STATUS = 'THEME_STATUS';
  void setTheme(bool value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool(THEME_STATUS, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool(THEME_STATUS) ?? false;
  }
}
//test for modifying this repo
/* ** UNNECESSARY CODE BELOW **  */

void printSomething() {
  print('something');
}
