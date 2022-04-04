import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:applover/style/themes.dart';

extension ThemeProvider on BuildContext {
  AppTheme getColors({bool listen = true}) =>
      Provider.of<ThemeModel>(this, listen: listen).getTheme;
}
