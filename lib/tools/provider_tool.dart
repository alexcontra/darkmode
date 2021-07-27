import 'package:dark_mode_provider/tools/classes.dart';
import 'package:flutter/cupertino.dart';

class ThemeProvider with ChangeNotifier {
  bool _darktheme = false;
  ThemePreference preference = ThemePreference();
  bool get darktheme => _darktheme;
  set darktheme(bool value) {
    _darktheme = value;
    preference.setTheme(value);
    notifyListeners();
  }
}
