import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'colors.dart';

class ThemeModel with ChangeNotifier {
  AppTheme _currentTheme = StandardTheme();

  get getTheme => _currentTheme;

  setTheme(themeMode) {
    _currentTheme = themeMode;
    notifyListeners();
  }
}

abstract class AppTheme implements AppColorsBase {}

class StandardTheme extends AppTheme {
  @override
  Color grey = AppStandardColors.grey;

  @override
  Color white = AppStandardColors.white;

  @override
  Color green = AppStandardColors.green;

  @override
  Color transparent = AppStandardColors.transparent;

  @override
  Color red = AppStandardColors.red;
}
